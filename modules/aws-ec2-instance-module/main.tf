resource "aws_instance" "dara_app_aws_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags          = var.instance_tags
}