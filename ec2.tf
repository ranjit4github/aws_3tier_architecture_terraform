# Author    : Ranjit Kumar Swain
# Web       : www.ranjitswain.com
# YouTube   : https://www.youtube.com/c/ranjitswain
# GitHub    : https://github.com/ranjit4github
########################################################

resource "aws_instance" "web1" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  key_name = "pswain"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true

  tags = {
    Name = "WebServer1"
  }

  provisioner "file" {
    source = "/Users/ranjitswain/Downloads/pswain.pem"
    destination = "/home/ec2-user/pswain.pem"
  }

}
/*
resource "aws_instance" "web2" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  key_name = "pswain"
  subnet_id = aws_subnet.public2.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  associate_public_ip_address = true
  
  tags = {
    Name = "WebServer2"
  }
}
*/
resource "aws_instance" "db" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  key_name = "pswain"
  subnet_id = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.allow_tls_db.id]

  tags = {
    Name = "DB Server"
  }
}
