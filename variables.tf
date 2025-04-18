variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "dns_hostnames" {
  default = true
}

variable "common_tags" {
  default = {}
}

variable "tags" {
  default = {}
}

variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid subnet CIDR"
  }
}

variable "public_subnet_tags" {
  default = {}
}

variable "private_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide 2 valid subnet CIDR"
  }
}

variable "private_subnet_tags" {
  default = {}
}

variable "database_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "Please provide 2 valid subnet CIDR"
  }
}

variable "database_subnet_tags" {
  default = {}
}

variable "db_subnet_group_tags" {
  default = {}
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "is_peering_required" {
  type    = bool
  default = false
}

variable "peering_connection_tags" {
  default = {}
}