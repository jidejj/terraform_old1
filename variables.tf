variable "region" {
  description = "AWS region"
  default     = "eu-west-1"

}

variable "ami_ids" {
  description = "Map of region to AMI ID"
  type        = map(string)
  default     = {
    dev   = "ami-08031206a0ff5a6ac"
    prod = "ami-0d118c6e63bcb554e"
  }
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b"]
}

variable "default_dev_region" {
  description = "Default region for dev environment"
  default     = "eu-west-1"
}

variable "default_prod_region" {
  description = "Default region for prod environment"
  default     = "eu-west-1"
}

variable "environment" {
  description = "Development Environment"
  default     = "dev"
}

variable "stag_environment" {
  description = "Development Environment"
  default     = "stag"
}

variable "prod_environment" {
  description = "Production Environment"
  default     = "prod"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Subnet CIDR block"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_tags" {
  description = "Tags for VPC"
  type        = map(string)
  default     = {
    Name = "MyVPC"
  }
}
