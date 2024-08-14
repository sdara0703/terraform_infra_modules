# AWS Auto Scaling Group (ASG) Module

This Terraform module creates an AWS Auto Scaling Group (ASG) with an associated launch template.

## Usage

```hcl
module "asg" {
  source = "path_to_your_module"

  launch_template_name_prefix = "my-app"
  image_id                    = "ami-12345678"
  instance_type               = "t3.micro"
  key_name                    = "my-key-pair"
  subnet_id                   = "subnet-12345678"
  subnet_ids                  = ["subnet-12345678", "subnet-87654321"]
  security_groups             = ["sg-12345678"]
  asg_name                    = "my-app-asg"
  desired_capacity            = 2
  min_size                    = 1
  max_size                    = 3
  scale_up_adjustment         = 1
  scale_down_adjustment       = -1
  tags = {
    Environment = "production"
    Name        = "my-app-instance"
  }
}
