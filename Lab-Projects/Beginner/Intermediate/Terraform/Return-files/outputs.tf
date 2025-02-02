output "instance_id" {
  description = "ID of the EC2 instances: app / web / db servers"
  value       = [aws_instance.app_server.id, aws_instance.web_server.id, aws_instance.db_server.id]
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance app server"
  value       = [aws_instance.app_server.public_ip, aws_instance.web_server.public_ip, aws_instance.db_server.public_ip]
}

