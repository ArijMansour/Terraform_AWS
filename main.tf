
module "levelup-vpc" {
    source      = "./module/vpc"

    ENVIRONMENT = var.ENVIRONMENT
    AWS_REGION  = var.AWS_REGION
}

module "levelup-webserver" {
    source      = "./webserver"

    ENVIRONMENT = var.ENVIRONMENT
    AWS_REGION  = var.AWS_REGION
    vpc_private_subnet1 = module.levelup-vpc.private_subnet1_id
    vpc_private_subnet2 = module.levelup-vpc.private_subnet2_id
    vpc_id = module.levelup-vpc.my_vpc_id
    vpc_public_subnet1 = module.levelup-vpc.public_subnet1_id
    vpc_public_subnet2 = module.levelup-vpc.public_subnet2_id

}

#terraform {
 # required_providers {
  #  aws = {
   #   source  = "hashicorp/aws"
    #  version = "~> 4.16.0"
    #}
  #}
#}
#Define Provider


terraform {
  required_version = ">= 0.13"
  required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 4.16.0"
   }
 }
}



provider "aws" {
  
  region = var.AWS_REGION
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}



output "load_balancer_output" {
  description = "Load Balancer"
  value       = module.levelup-webserver.load_balancer_output
}
