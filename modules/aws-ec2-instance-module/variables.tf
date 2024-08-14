
variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}

variable "tags" {
  type = map(string)
  description = "Additional tags for the instance"
}
