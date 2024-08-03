# ec2-instance-module/outputs.tf
output "instance_id" {
  description = "The ID of the instance"
  value       = aws_instance.dara_app_aws_instance.id
}
