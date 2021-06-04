#varialbes

variable "aws_region" {
  description = "Name the aws region (eu-central-1, us-central-1 and etc.)"
  default     = "eu-north-1"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
  default     = "GOD-EKS"
}

variable "project" {
  type        = string
  description = "Project name"
  default     = "GOD-EKS-PROJECT"
}

variable "environment" {
  type        = string
  description = "Environment"
  default     = "GOD-EKS-ENV"
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

variable "availability_zones" {
  type        = list(any)
  description = "Availability zones (eu-north-1, ...)"
  default     = []
}
