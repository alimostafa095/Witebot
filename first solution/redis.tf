resource "aws_elasticache_cluster" "memcached" {
  cluster_id           = "memchaced-cluster"
  engine               = "memcached"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.memcached1.5"
  port                 = 11211
  subnet_group_name = "subnetgroup"
  depends_on       = [aws_elasticache_subnet_group.subnetgroup]

}

resource "aws_elasticache_subnet_group" "subnetgroup" {
  name       = "subnetgroup"

  subnet_ids = ["${aws_subnet.private_redis_subnet.*.id}"]
  
}