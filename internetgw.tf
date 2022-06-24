# Author    : Ranjit Kumar Swain
# Web       : www.ranjitswain.com
# YouTube   : https://www.youtube.com/c/ranjitswain
# GitHub    : https://github.com/ranjit4github
########################################################

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}