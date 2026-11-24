variable "ami_id" {
  type        = string
  default     = "ami-0eec78ea4cbaaf5bd"
  description = "This is an ami id of AWS devops practice which is RHEL-10"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "Instance used is t3.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        Environment = "DEV"
        component = "backend"
        terraform = "true"
    }
}

variable "sg_name" {
    type = string
    default "allow_sshh"
}

variable "ingress_from_port" {
    type = number
    default = 22
}

variable "ingress_to_port" {
    type = number
    default = 22
}

variable "ingress_protocol" {
    type = string
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}