variable "instance_names" {
    type = list 
    default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "ami_id" {
    default = "ami-0f3c7d07486cad139"
}

variable "zone_id" {
    default = "Z10344631O8SNO4YY2NVK"
}

variable "domain_name" {
    default = "shivarampractise.online"
}