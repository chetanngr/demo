resource "aws_eip" "natGatewayEip" {
  tags = local.tags
}
resource "aws_nat_gateway" "natGateway" {
  allocation_id = aws_eip.natGatewayEip.id
  subnet_id     = aws_subnet.public[0].id
  tags          = local.tags
}
