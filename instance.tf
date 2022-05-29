resource "aws_instance" "public-instance" {
  ami                    = lookup(var.AMIS, var.AWS_REGION)
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.jiemkey.key_name
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.jiem-sg.id]

  tags = {
    Name    = "public-instance"
    PROJECT = "JIEM"
  }

}

resource "aws_instance" "private-instance" {
  ami                    = lookup(var.AMIS, var.AWS_REGION)
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.jiemkey.key_name
  subnet_id              = module.vpc.private_subnets[0]
  vpc_security_group_ids = [aws_security_group.jiem-sg.id]

  tags = {
    Name    = "private-instance"
    PROJECT = "JIEM"
  }


  connection {
    user        = var.USERNAME
    private_key = file(var.PRIV_KEY_PATH)
    host        = self.public_ip
  }
}
