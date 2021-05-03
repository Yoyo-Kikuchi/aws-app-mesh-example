resource "aws_appmesh_virtual_node" "template" {
  name      = var.name
  mesh_name = var.mesh_name

  spec {
    dynamic "backend" {
      for_each = var.is_backend ? var.virtual_service : []
      content {
        virtual_service {
          virtual_service_name = backend.value
        }
      }
    }

    listener {
      port_mapping {
        port     = var.listener_port
        protocol = var.listener_protocol
      }

      dynamic "health_check" {
        for_each = var.is_health_check ? [""] : []
        content {
          protocol            = var.health_check_protocol
          path                = var.health_check_path
          healthy_threshold   = var.health_check_healthy_threshold
          unhealthy_threshold = var.health_check_unhealthy_threshold
          timeout_millis      = var.health_check_timeout
          interval_millis     = var.health_check_interval
        }
      }
    }

    service_discovery {
      dns {
        hostname = var.service_discovery_dns_hostname
      }
    }
  }
}