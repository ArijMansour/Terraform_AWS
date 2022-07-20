variable "AWS_ACCESS_KEY" {
    type = string
    default = "AKIAWPE4KCZCLYQOJKLA"
}

variable "AWS_SECRET_KEY" {
    type = string 
    default = "feXak79T6DnMOHhl4z72suNPnq089t/J9iXTXAFc"
}

variable "AWS_REGION" {
    type        = string
    default     = "us-east-2"
}

variable "LEVELUP_VPC_CIDR_BLOC" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "LEVELUP_VPC_PUBLIC_SUBNET1_CIDR_BLOCK" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.101.0/24"
}

variable "LEVELUP_VPC_PUBLIC_SUBNET2_CIDR_BLOCK" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.102.0/24"
}

variable "LEVELUP_VPC_PRIVATE_SUBNET1_CIDR_BLOCK" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.1.0/24"
}

variable "LEVELUP_VPC_PRIVATE_SUBNET2_CIDR_BLOCK" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.2.0/24"
}

variable "ENVIRONMENT" {
  description = "AWS VPC Environment Name"
  type        = string
  default     = "Development"
}

