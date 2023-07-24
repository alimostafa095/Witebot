module "wb-database" {
    source                    = "./RDS-Module"
    identifier                = "wb-database"
    name                      = "widebot"
    multi_az                  = var.multi_az 
    max_allocated_storage     = var.max_allocated_storage


    vpc_id                    = "${aws_vpc.main_network.id}"
    subnets_ids               =  ["${aws_subnet.private_sql_subnet.*.id}"] 
    source_security_group_ids  = ["${aws_security_group.sql_sg.id}"]  

}



