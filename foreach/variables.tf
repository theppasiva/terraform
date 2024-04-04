variable "instance_names" {
    type = list 
    default = {
        mongodb = "t3.small"
        redis = "t2.micro"
        mysql = "t3.small"
        rabbitmq = "t2.micro"
        catalogue = "t2.micro"
        cart = "t2.micro"
        user = "t2.micro"
        shipping = "t3.small"
        payment = "t2.micro"
        dispatch = "t2.micro"
        web = "t2.micro"
    }
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