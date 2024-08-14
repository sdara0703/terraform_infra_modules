variable "launch_template_name_prefix" {
  description = "Prefix for the launch template name"
  type        = string
}

variable "image_id" {
  description = "The ID of the AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
}

variable "device_name" {
  description = "The device name for the root volume"
  type        = string
  default     = "/dev/xvda"
}

variable "volume_size" {
  description = "Size of the root volume in GiB"
  type        = number
  default     = 8
}

variable "volume_type" {
  description = "Type of the root volume"
  type        = string
  default     = "gp2"
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = true
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs to associate with the ASG"
  type        = list(string)
}

variable "security_groups" {
  description = "A list of security group IDs to associate with the instance"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the instance"
  type        = map(string)
  default     = {}
}

variable "asg_name" {
  description = "Name of the Auto Scaling Group"
  type        = string
}

variable "desired_capacity" {
  description = "The desired number of instances in the ASG"
  type        = number
}

variable "min_size" {
  description = "The minimum number of instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of instances in the ASG"
  type        = number
}

variable "scale_up_adjustment" {
  description = "The number of instances to add when scaling up"
  type        = number
}

variable "scale_down_adjustment" {
  description = "The number of instances to remove when scaling down"
  type        = number
}

variable "cooldown" {
  description = "The cooldown period in seconds before another scaling activity can start"
  type        = number
  default     = 300
}

variable "additional_tags" {
  description = "Additional tags to propagate to instances"
  type        = list(object({
    key   = string
    value = string
  }))
  default = []
}
