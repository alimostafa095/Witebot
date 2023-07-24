# ALB security group
resource "aws_security_group" "load_balancer_sg" {
  name   = "${var.name_prefix}-alb-sg"
  vpc_id = "${aws_vpc.main_network.id}"

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ECS tasks security group
resource "aws_security_group" "ecs_tasks_sg" {
  name   = "${var.name_prefix}-ecs-tasks-sg"
  vpc_id = "${aws_vpc.main_network.id}"

  ingress {
    protocol        = "tcp"
    from_port       = 80
    to_port         = 80
    security_groups = ["${aws_security_group.load_balancer_sg.id}"]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

////////////////////////
# ECS to redis security group
resource "aws_security_group" "ecs_redis_sg" {
  name   = "${var.name_prefix}-ecs-redis-sg"
  vpc_id = "${aws_vpc.main_network.id}"

  ingress {
    protocol        = "tcp"
    from_port       = 6379
    to_port         = 6379
    security_groups = ["${aws_security_group.redis_sg.id}"]
  }

  egress {
    protocol        = "tcp"
    from_port       = 6379
    to_port         = 6379
    security_groups = ["${aws_security_group.redis_sg.id}"]
  }
}

# Redis security group
resource "aws_security_group" "redis_sg" {
  name = "${var.name_prefix}-redis_sg"
  vpc_id      = "${aws_vpc.main_network.id}"

  ingress {
    protocol    = "tcp"
    from_port   = 6379
    to_port     = 6379
    cidr_blocks = ["${aws_security_group.ecs_redis_sg.id}"]
  }

  egress {
    protocol    = "tcp"
    from_port   = 6379
    to_port     = 6379
    cidr_blocks = ["0.0.0.0/0"]
  }
}





////////////////////////
# ECS to Sql server security group
resource "aws_security_group" "ecs_sql_sg" {
  name   = "${var.name_prefix}-ecs-sql-sg"
  vpc_id = "${aws_vpc.main_network.id}"

  ingress {
    protocol        = "tcp"
    from_port       = 1433
    to_port         = 1433
    security_groups = ["${aws_security_group.sql_sg.id}"]
  }

  egress {
    protocol        = "tcp"
    from_port       = 1433
    to_port         = 1433
    security_groups = ["${aws_security_group.sql_sg.id}"]
  }
}

# sql server security group
resource "aws_security_group" "sql_sg" {
  name = "${var.name_prefix}-sql_sg"
  vpc_id      = "${aws_vpc.main_network.id}"

  ingress {
    protocol    = "tcp"
    from_port   = 1433
    to_port     = 1433
    cidr_blocks = ["${aws_security_group.ecs_sql_sg.id}"]
  }

  egress {
    protocol    = "tcp"
    from_port   = 1433
    to_port     = 1433
    cidr_blocks = ["0.0.0.0/0"]
  }
}
