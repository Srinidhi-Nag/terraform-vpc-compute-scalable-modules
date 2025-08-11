variable "instance_count" {
  type    = number
  default = 4
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ebs_sizes" {
  type = list(number)
}

variable "subnet_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "vpc_id" {
  type = string
}
