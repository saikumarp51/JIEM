module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.VPC_NAME
  cidr = var.VpcCIDR

  azs                  = [var.Zone1, var.Zone2]
  private_subnets      = [var.PrivSubCIDR]
  public_subnets       = [var.PubSubCIDR]
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform   = "true"
    Environment = "Prod"
  }

  vpc_tags = {
    Name = var.VPC_NAME
  }
}
