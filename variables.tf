variable "my-os-image" {
  type        = string
  description = "my aws ami id"
  #default     = "ami-0cae6d6fe6048ca2c"
}

variable "machine_size" {
  type = string
  #default = "t2.nano"
}

variable "vm_name" {
  type = string
  #default = "sunil-ws-day2"
}

variable "my_aws_region" {
  type = string
  #default = "us-east-1"
}

variable "my_private_key_name" {
  type = string
  #default = "splunk-key"
}

variable "novm" {
  type = number
  #default = "2"
}