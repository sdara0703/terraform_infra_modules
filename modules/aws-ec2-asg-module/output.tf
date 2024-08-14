output "asg_id" {
  description = "The ID of the Auto Scaling Group"
  value       = aws_autoscaling_group.this.id
}

output "asg_name" {
  description = "The name of the Auto Scaling Group"
  value       = aws_autoscaling_group.this.name
}

output "launch_template_id" {
  description = "The ID of the launch template"
  value       = aws_launch_template.this.id
}

output "launch_template_name" {
  description = "The name of the launch template"
  value       = aws_launch_template.this.name
}
