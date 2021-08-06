#varialbes

variable "aws_region" {
  description = "Name the aws region (eu-central-1, us-central-1 and etc.)"
  default     = "eu-north-1"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
  default     = "GOD-VPC"
}

variable "project" {
  type        = string
  description = "Project name"
  default     = "GOD-VPC-PROJECT"
}

variable "cidr" {
  type    = string
  default = null
}

variable "network_delimiter" {
  type    = string
  default = "8"
}

variable "network" {
  type        = string
  description = "CIDR Template 10.X.0.0/16."
  default     = "10"
}

variable "single_nat" {
  type        = bool
  description = "Single NAT Gateway or separate for AZ"
  default     = true
}

variable "availability_zones" {
  type        = list(any)
  description = "Availability zones (eu-north-1, ...)"
  default     = []
}
