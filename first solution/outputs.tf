# get ALB DNS name
output "alb_hostname" {
  value = "${aws_alb.alb.dns_name}"
}

output "configuration_endpoint_address" {
  value = "${aws_elasticache_replication_group.default.configuration_endpoint_address}"
}
