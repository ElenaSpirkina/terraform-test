provider "aws" {}

resource "aws_instance" "test_vm" {
  ami = lookup(var.amis, var.region)
  count = var.vm_num
  key_name = lookup(var.key_name, var.region)
  vpc_security_group_ids = [ lookup(var.secgr, var.region) ]
  #source_dest_check = false
  associate_public_ip_address = true
  instance_type = var.vm_type
  subnet_id = lookup(var.vm_subnet, var.region)
  tags = {
    Name = "test instance"
  }
}