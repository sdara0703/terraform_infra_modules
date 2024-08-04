
# provider "aws" {
#  region = "us-west-2" # Change to your preferred region
# }

resource "aws_instance" "dara_app_aws_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  #tags = {
  #  instance_tags = var.instance_tags
  #}
}

