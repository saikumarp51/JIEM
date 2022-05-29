variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "AMIS" {
  default = {
    ap-south-1 = "ami-079b5e5b3971bd10d"
  }
}

variable "PRIV_KEY_PATH" {
  default = "jiemkey"
}

variable "PUB_KEY_PATH" {
  default = "jiemkey.pub"
}

variable "USERNAME" {
  default = "ec2-user"
}

variable "MYIP" {
  default = "45.119.114.74/32"
}


variable "VPC_NAME" {
  default = "jiem-vpc"
}

variable "Zone1" {
  default = "ap-south-1a"
}

variable "Zone2" {
  default = "ap-south-1b"
}


variable "VpcCIDR" {
  default = "172.20.0.0/16"
}


variable "PubSubCIDR" {
  default = "172.20.10.0/24"
}


variable "PrivSubCIDR" {
  default = "172.20.20.0/24"
}
