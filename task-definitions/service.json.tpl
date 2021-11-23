[
    {
        "entryPoint": [
            "sh",
            "-c"
        ],
        "portMappings": [
            {
                "hostPort": ${container_port},
                "protocol": "tcp",
                "containerPort": ${container_port}
            }
        ],
        "command": [
            "/bin/sh -c \"echo '<html> <head> <title>AWS ECS EC2 App</title> <style>body {margin-top: 40px; background-color: #333; font-family: 'Roboto', sans-serif;} </style> </head><body> <div style=color:white;text-align:center> <h1>AWS ECS EC2 App</h1> <h2>Hello sandeep!</h2> <p>Your Apache HTTP server is now running on a container in an ECS cluster of EC2 instances.</p> </div></body></html>' >  /usr/local/apache2/htdocs/index.html && httpd-foreground\""
        ],
        "cpu": ${cpu},
        "memory": ${container_memory},
        "image": "${app_image}",
        "name": "${app_name}"
    }
]
