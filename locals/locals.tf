locals {
  ami_id = data.aws_ami.devops.id
  instance_type = "t2.micro"
  name = "${var.project}-${var.component}-${var.environment}"
}