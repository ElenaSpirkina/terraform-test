variable "region" {
  description = "AWS region for hosting our your network"
  default = "us-east-2"
}

variable "amis" {
  description = "Base AMI to launch the instances"
  default = {
    us-east-2 = "ami-0beaa649c482330f7"
  }
}

variable "vm_num" {
  description = "Number of instances to create"
  default = 1
}

variable "vm_type" {
  description = "EC2 instance type"
  default = "t2.micro"
}

variable "key_name" {
  description = "Key name for SSH into EC2"
  default = "my-test-kp"
}

variable "vm_subnet" {
  description = "VPC Subnet"
  default = {
    us-east-2 = "subnet-0de17619c48864974"
  }
}

variable "secgr" {
  description = "Security group for EC2 instance"
  default = "sg-06c07ed8e81731123"
}