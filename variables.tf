variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ebs_sizes" {
  type = list(number)
}

variable "key_name" {
  type = string
}
