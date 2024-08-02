# EC2-Instanz 
resource "aws_instance" "example" {
  ami                         = "ami-071878317c449ae48"
  instance_type               = "t2.nano"
  subnet_id                   = aws_subnet.public[0].id # Verwendung des ersten öffentlichen Subnetzes
  key_name                    = "my-instance-1_key"
  vpc_security_group_ids      = [aws_security_group.http.id]
  associate_public_ip_address = true
  tags = {
    Name = "example-instance"
  }
}