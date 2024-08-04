
variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}

variable "instance_tags" {
  description = "Additional tags for the instance"
  type = map(string)
  default = {
    instance_name = "test"
  }
}
