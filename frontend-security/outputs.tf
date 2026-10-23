output "frontend_public_sg01_id" {
  value = aws_security_group.fe_public_sg01.id
}
output "frontend_private_sg01_id" {
  value = aws_security_group.fe_private_sg01.id
}

output "frontend_private_sg02_id" {
  value = aws_security_group.fe_private_sg02.id
}

output "frontend_private_sg03_id" {
  value = aws_security_group.fe_private_sg03.id
}