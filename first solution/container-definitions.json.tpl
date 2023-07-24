[
  {
    "cpu": ${fargate_cpu},
    "essential": true,
    "image": "${app_image}",
    "memory": ${fargate_memory},
    "name": "widebot-api",
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ]
  }
]
