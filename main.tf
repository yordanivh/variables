variable "image" {
  type    = string
  default = "ami-0d5d9d301c853a04a"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}


provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "output_example" {
  ami           = var.image
  instance_type = var.instance_type
}
