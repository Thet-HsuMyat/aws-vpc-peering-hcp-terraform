resource "aws_vpc_security_group_ingress_rule" "fe_private_sg02_allow_ssh_from_be_private_sg02" {
  #   security_group_id            = aws_security_group.fe_private_sg02.id
  security_group_id            = data.terraform_remote_state.frontend_security.outputs.frontend_private_sg02_id
  referenced_security_group_id = data.terraform_remote_state.backend_security.outputs.backend_private_sg02_id
  from_port                    = 22
  ip_protocol                  = "tcp"
  to_port                      = 22
  depends_on                   = [aws_vpc_peering_connection.fevpc_peering_bevpc]
}

resource "aws_vpc_security_group_ingress_rule" "fe_private_sg02_allow_icmp_from_be_private_sg02" {
  #   security_group_id            = aws_security_group.fe_private_sg02.id
  security_group_id            = data.terraform_remote_state.frontend_security.outputs.frontend_private_sg02_id
  referenced_security_group_id = data.terraform_remote_state.backend_security.outputs.backend_private_sg02_id
  from_port                    = 8
  ip_protocol                  = "icmp"
  to_port                      = 0
  depends_on                   = [aws_vpc_peering_connection.fevpc_peering_bevpc]
}

resource "aws_vpc_security_group_egress_rule" "fe_private_sg02_allow_ssh_to_be_private_sg02" {
  # security_group_id            = aws_security_group.fe_private_sg02.id
  security_group_id = data.terraform_remote_state.frontend_security.outputs.frontend_private_sg02_id

  referenced_security_group_id = data.terraform_remote_state.backend_security.outputs.backend_private_sg02_id
  from_port                    = 22
  ip_protocol                  = "tcp"
  to_port                      = 22
  depends_on                   = [aws_vpc_peering_connection.fevpc_peering_bevpc]
}

resource "aws_vpc_security_group_egress_rule" "fe_private_sg02_allow_icmp_to_be_private_sg02" {
  #   security_group_id            = aws_security_group.fe_private_sg02.id
  security_group_id            = data.terraform_remote_state.frontend_security.outputs.frontend_private_sg02_id
  referenced_security_group_id = data.terraform_remote_state.backend_security.outputs.backend_private_sg02_id
  from_port                    = 8
  ip_protocol                  = "icmp"
  to_port                      = 0
  depends_on                   = [aws_vpc_peering_connection.fevpc_peering_bevpc]
}

resource "aws_vpc_security_group_ingress_rule" "fe_private_sg03_allow_ssh_from_be_private_sg03" {
  #   security_group_id            = aws_security_group.fe_private_sg03.id
  security_group_id            = data.terraform_remote_state.frontend_security.outputs.frontend_private_sg03_id
  referenced_security_group_id = data.terraform_remote_state.backend_security.outputs.backend_private_sg03_id
  from_port                    = 22
  ip_protocol                  = "tcp"
  to_port                      = 22
  depends_on                   = [aws_vpc_peering_connection.fevpc_peering_bevpc]
}

resource "aws_vpc_security_group_ingress_rule" "fe_private_sg03_allow_icmp_from_be_private_sg03" {
  #   security_group_id            = aws_security_group.fe_private_sg03.id
  security_group_id            = data.terraform_remote_state.frontend_security.outputs.frontend_private_sg03_id
  referenced_security_group_id = data.terraform_remote_state.backend_security.outputs.backend_private_sg03_id
  from_port                    = 8
  ip_protocol                  = "icmp"
  to_port                      = 0
  depends_on                   = [aws_vpc_peering_connection.fevpc_peering_bevpc]
}

resource "aws_vpc_security_group_egress_rule" "fe_private_sg03_allow_ssh_to_be_private_sg03" {
  #   security_group_id            = aws_security_group.fe_private_sg03.id
  security_group_id            = data.terraform_remote_state.frontend_security.outputs.frontend_private_sg03_id
  referenced_security_group_id = data.terraform_remote_state.backend_security.outputs.backend_private_sg03_id
  from_port                    = 22
  ip_protocol                  = "tcp"
  to_port                      = 22
  depends_on                   = [aws_vpc_peering_connection.fevpc_peering_bevpc]
}

resource "aws_vpc_security_group_egress_rule" "fe_private_sg03_allow_icmp_to_be_private_sg03" {
  #   security_group_id            = aws_security_group.fe_private_sg03.id
  security_group_id            = data.terraform_remote_state.frontend_security.outputs.frontend_private_sg03_id
  referenced_security_group_id = data.terraform_remote_state.backend_security.outputs.backend_private_sg03_id
  from_port                    = 8
  ip_protocol                  = "icmp"
  to_port                      = 0
  depends_on                   = [aws_vpc_peering_connection.fevpc_peering_bevpc]
}