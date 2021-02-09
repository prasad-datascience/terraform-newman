variable "service_name" {
    type = string 
    default = "newman-service"
}

variable "task_family" {
    type = string 
    default = "newman-task"
}

variable "log_group_name" {
    type = string 
    default = "/ecs/newman-log"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "created_by" {
    type = string
    default = "vara"
}

variable "region" {
    type = string
    default = "ap-south-1"
}

variable "ecr_repository_name" {
  description = "Enter ECR image name"
  default = "294238557692.dkr.ecr.ap-south-1.amazonaws.com/dummy-ecr"
}

#variable "container_tag" {
#   description = "Enter ECR image tag"
#   default = "latest"
# }