
output "db_security_group_id" {
 value = aws_security_group.db_security_group.id


}
output "db_instance_identifier" {
    value = aws_db_instance.db_instance.identifier
}