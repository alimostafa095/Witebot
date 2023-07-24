resource "aws_db_parameter_group" "db_parameter_group" {
  name         = "${var.identifier}-parameter-group"
  family       = var.parameter_group_family
  description  = "${var.identifier}-parameter-group"

  parameter {
    name  = var.parameter_name
    value = var.parameter_value
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name        = "${var.identifier}-subnet-group"
  description = "${var.identifier}-subnet-group"
  subnet_ids  = var.subnets_ids
  tags        = var.tags
}

# Declare the data source for available AZs in the specified region##
data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_db_instance" "db_instance" {
  allocated_storage               = var.allocated_storage  
  storage_type                    = "gp2"
  engine                          = var.engine 
  engine_version                  = var.engine_version  
  instance_class                  = var.instance_class
  identifier                      = var.identifier
  name                            = var.name
  username                        = "admin"
  password                        = "admin123"
  parameter_group_name            = aws_db_parameter_group.db_parameter_group.id
  port                            = var.port
  db_subnet_group_name            = aws_db_subnet_group.db_subnet_group.id
  vpc_security_group_ids          = [ aws_security_group.db_security_group.id ]
  multi_az                        = var.multi_az
  backup_retention_period         = 7
  # availability_zone               = data.aws_availability_zones.available.names
  deletion_protection             = true
  publicly_accessible             = false
  storage_encrypted               = true

  skip_final_snapshot             = false 
  final_snapshot_identifier       = "${var.identifier}-final-snapshot"
  character_set_name              = var.character_set_name
  max_allocated_storage           = var.max_allocated_storage
  copy_tags_to_snapshot           = true
  allow_major_version_upgrade     = false
  auto_minor_version_upgrade      = false
  snapshot_identifier             = var.snapshot_identifier
  tags                            = var.tags
  enabled_cloudwatch_logs_exports = ["alert" , "audit" , "listener" , "trace"]
}

resource "aws_security_group" "db_security_group" {
  name   = "${var.identifier}-SG"
  vpc_id = var.vpc_id
  tags   = var.tags
}

resource "aws_security_group_rule" "ingress_SG_rule" {
  count                    = var.ingress_SG_rule_counter
  security_group_id        = "${aws_security_group.db_security_group.id}"
  description              = "allow inbound Traffic to the DB"
  type                     = "ingress"
  from_port                = var.port
  to_port                  = var.port
  protocol                 = "TCP"
  source_security_group_id = var.source_security_group_ids[count.index]
}

resource "aws_security_group_rule" "egress_SG_rule" {
  security_group_id = "${aws_security_group.db_security_group.id}"
  description       = "Allow outbound Traffic from the DB"
  type              = "egress"
  from_port         = "0"
  to_port           = "0"
  protocol          = "All"
  cidr_blocks       = ["0.0.0.0/0"]
}