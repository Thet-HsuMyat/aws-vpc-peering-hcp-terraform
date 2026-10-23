resource "aws_vpc_peering_connection" "fevpc_peering_bevpc" {
  # vpc_id      = aws_vpc.frontend_vpc.id
  vpc_id = data.terraform_remote_state.frontend.outputs.frontend_vpc_id
  # peer_vpc_id = aws_vpc.backend_vpc.id
  peer_vpc_id = data.terraform_remote_state.backend.outputs.backend_vpc_id
  auto_accept = true

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  #   tags = {
  #     Side = "Requester"
  #   }
}

resource "aws_route" "fevpc_private_subnet02_to_bevpc_private_subnet02" {
  # route_table_id            = aws_route_table.frontend_private_rtb02.id
  route_table_id            = data.terraform_remote_state.frontend.outputs.frontend_private_rtb02_id
  destination_cidr_block    = var.backend_private_subnet_cidr[1]
  vpc_peering_connection_id = aws_vpc_peering_connection.fevpc_peering_bevpc.id
}

resource "aws_route" "bevpc_private_subnet02_to_fevpc_private_subnet02" {
  # route_table_id            = aws_route_table.backend_private_rtb02.id
  route_table_id            = data.terraform_remote_state.backend.outputs.backend_private_rtb02_id
  destination_cidr_block    = var.frontend_private_subnet_cidr[1]
  vpc_peering_connection_id = aws_vpc_peering_connection.fevpc_peering_bevpc.id
}

resource "aws_route" "fevpc_private_subnet03_to_bevpc_private_subnet03" {
  # route_table_id            = aws_route_table.frontend_private_rtb03.id
  route_table_id            = data.terraform_remote_state.frontend.outputs.frontend_private_rtb03_id
  destination_cidr_block    = var.backend_private_subnet_cidr[2]
  vpc_peering_connection_id = aws_vpc_peering_connection.fevpc_peering_bevpc.id
}

resource "aws_route" "bevpc_private_subnet03_to_fevpc_private_subnet03" {
  # route_table_id            = aws_route_table.backend_private_rtb03.id
  route_table_id            = data.terraform_remote_state.backend.outputs.backend_private_rtb03_id
  destination_cidr_block    = var.frontend_private_subnet_cidr[2]
  vpc_peering_connection_id = aws_vpc_peering_connection.fevpc_peering_bevpc.id
}