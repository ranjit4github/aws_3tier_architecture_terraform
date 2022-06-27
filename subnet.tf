# Author    : Ranjit Kumar Swain
# Web       : www.ranjitswain.com
# YouTube   : https://www.youtube.com/c/ranjitswain
# GitHub    : https://github.com/ranjit4github
########################################################

variable "cidr" {
  type = list
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "az" {
  type = list
  default = ["ap-south-1a","ap-south-1b"]
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr[count.index]
  availability_zone = var.az[count.index]
  count = 2

  tags = {
    Name = "public-sub"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "private-sub3"
  }
}

data "aws_subnets" "sid" {
  filter {
    name   = "vpc-id"
    values = [aws_vpc.main.id]
  }

  tags = {
    Tier = "Public"
  }
}
