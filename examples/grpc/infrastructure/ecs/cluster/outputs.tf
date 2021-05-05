output "grpc_cluster" {
  value = {
    id       = module.grpc_cluster.template.id
    arn      = module.grpc_cluster.template.arn
    tags_all = module.grpc_cluster.template.tags_all
  }
}

output "security_group" {
  value = {
    id       = module.security_group.template.id
    arn      = module.security_group.template.arn
    owner_id = module.security_group.template.owner_id
    tags_all = module.security_group.template.tags_all
  }
}

output "task_iam_role" {
  value = {
    id          = module.task_iam_role.template.id
    arn         = module.task_iam_role.template.arn
    create_date = module.task_iam_role.template.create_date
    name        = module.task_iam_role.template.name
    unique_id   = module.task_iam_role.template.unique_id
    tags_all    = module.task_iam_role.template.tags_all
  }
}

output "task_execution_iam_role" {
  value = {
    id          = module.task_execution_iam_role.template.id
    arn         = module.task_execution_iam_role.template.arn
    create_date = module.task_execution_iam_role.template.create_date
    name        = module.task_execution_iam_role.template.name
    unique_id   = module.task_execution_iam_role.template.unique_id
    tags_all    = module.task_execution_iam_role.template.tags_all
  }
}

output "ecs_service_log_group" {
  value = {
    arn      = module.ecs_service_log_group.template.arn
    tags_all = module.ecs_service_log_group.template.tags_all
  }
}
