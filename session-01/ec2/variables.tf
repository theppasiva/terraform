variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
}

variable "sg-description" {
    type = string
    default = "Allow TLS Inbound traffic"
}

variable "Inbound-from-port" {
    #type = string
    default = 0

}

variable "Cidr_blocks" {
    type = list 
    default = ["0.0.0.0/0"]
}