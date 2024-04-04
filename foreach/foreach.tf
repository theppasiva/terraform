resource "aws_instance" "web" {
  for_each = var.instance_names
  ami           = var.ami_id
  instance_type = each.value
  tags = {
    Name = each.key
  }
}

# resource "aws_route53_record" "www" {
#   count = length(var.instance_names)
#   zone_id = var.zone_id
#   name    = "${var.instance_names[count.index]}.${var.domain_name}" #interpollation
#   type    = "A"
#   ttl     = 1
#   records = [var.instance_names[count.index] == "web" ? aws_instance.web[count.index].
#   public_ip : aws_instance.web[count.index].private_ip]
# }

output "instance_info" {
    value = aws_instance.web
}