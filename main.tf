variable "image" {
  type    = string
  
}

variable "instance_type" {
  type    = string
 
}


provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "output_example" {
  ami           = var.image
  instance_type = var.instance_type
}
