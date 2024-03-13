variable "subscription_id" {
  type = string
}
variable "resource_group_name" {
  default =  "ODL-azure-1257894"
}
variable "service_plan_name" {
  default = "az-vishal004-plan"
}
variable "webapp_name" {
  default = "az-vishal004-webapp"
}
variable "github_repository" {
  type    = string
  default = "Vishal-Bharath-Kumar/BigBang-Project"
}