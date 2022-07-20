variable "AWS_ACCESS_KEY" {
    type = string
    default = "AKIAWPE4KCZCLYQOJKLA"
}

variable "AWS_SECRET_KEY" {
    type= string
    default = "feXak79T6DnMOHhl4z72suNPnq089t/J9iXTXAFc"
}
variable "ENVIRONMENT" {
    type    = string
    default = "development"
}

variable "AMIS" {
    type = map
    default = {
        us-east-1 = "ami-0f40c8f97004632f9"
        us-east-2 = "ami-05692172625678b4e"
        us-west-2 = "ami-02c8896b265d8c480"
        eu-west-1 = "ami-0cdd3aca00188622e"
    }
}

variable "AWS_REGION" {
default = "us-east-2"
}

variable "INSTANCE_TYPE" {
  default = "t2.large"
}
