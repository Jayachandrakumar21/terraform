resource "aws_route53_record" "expense" {
  for_each = aws_instance.server
  zone_id = var.zone_id
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}" # interpolation 
  type    = "A"
  ttl     = 1
  records = each.key == "frontend" ? [each.value.public_ip] : [each.value.private_ip] #list type
  allow_overwrite = true
}

# resource "aws_route53_record" "frontend" {
#   for_each = aws_instance.server
#   zone_id = var.zone_id
#   name    = each.key == "frontend" ? "var.domain_name" :
#   type    = "A"
#   ttl     = 1
#   records = {aws_instance.server.public_ip} #list type
#   allow_overwrite = true
# }