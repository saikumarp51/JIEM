resource "aws_key_pair" "jiemkey" {
  key_name   = "jiemkey"
  public_key = file(var.PUB_KEY_PATH)
}
