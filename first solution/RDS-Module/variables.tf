variable "parameter_group_family" {
  default = "sqlserver-ex-15.0"
}
variable "parameter_name" {
  default = "allow_global_dblinks"
}
variable "parameter_value" {
  default = true
}
variable "subnets_ids" {
  type = list
}
variable "snapshot_identifier" {
  default = null
}
variable "allocated_storage" {
  default = 30
}
variable "engine" {
  default = "sqlserver-ex"
}
variable "engine_version" {
  default = "15.00"
}
variable "instance_class" {
  default = "db.t3.medium"
}
variable "identifier" {}
variable "name" {}
variable "multi_az"{}

variable "character_set_name" {
  default     = "Latin1_General_CI_AS"
  description = "Optional, the character set name to use for DB encoding in Oracle and Microsoft SQL instances"
}
variable "max_allocated_storage"{}
variable "tags" {}
variable "vpc_id" {}
variable "source_security_group_ids" {
  type = list
}

variable "port" {
  default = 1433
}


variable "ingress_SG_rule_counter" {
  default = 1
}