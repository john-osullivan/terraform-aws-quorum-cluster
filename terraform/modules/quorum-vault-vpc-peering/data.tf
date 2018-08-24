# ---------------------------------------------------------------------------------------------------------------------
# LOAD VPCs
# ---------------------------------------------------------------------------------------------------------------------
data "aws_vpc" "vault" {
  id = "${var.quorum_vault_vpc_id}"
}

data "aws_vpc" "quorum_us_east_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "us-east-1", 0)}"

  id = "${lookup(var.quorum_vpcs, "us-east-1")}"
}

data "aws_vpc" "quorum_us_east_2" {
  count = "${lookup(var.quorum_vpc_peering_counts, "us-east-2", 0)}"

  id = "${lookup(var.quorum_vpcs, "us-east-2")}"
}

data "aws_vpc" "quorum_us_west_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "us-west-1", 0)}"

  id = "${lookup(var.quorum_vpcs, "us-west-1")}"
}

data "aws_vpc" "quorum_us_west_2" {
  count = "${lookup(var.quorum_vpc_peering_counts, "us-west-2", 0)}"

  id = "${lookup(var.quorum_vpcs, "us-west-2")}"
}

data "aws_vpc" "quorum_eu_central_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "eu-central-1", 0)}"

  id = "${lookup(var.quorum_vpcs, "eu-central-1")}"
}

data "aws_vpc" "quorum_eu_west_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "eu-west-1", 0)}"

  id = "${lookup(var.quorum_vpcs, "eu-west-1")}"
}

data "aws_vpc" "quorum_eu_west_2" {
  count = "${lookup(var.quorum_vpc_peering_counts, "eu-west-2", 0)}"

  id = "${lookup(var.quorum_vpcs, "eu-west-2")}"
}

data "aws_vpc" "quorum_ap_south_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ap-south-1", 0)}"

  id = "${lookup(var.quorum_vpcs, "ap-south-1")}"
}

data "aws_vpc" "quorum_ap_northeast_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ap-northeast-1", 0)}"

  id = "${lookup(var.quorum_vpcs, "ap-northeast-1")}"
}

data "aws_vpc" "quorum_ap_northeast_2" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ap-northeast-2", 0)}"

  id = "${lookup(var.quorum_vpcs, "ap-northeast-2")}"
}

data "aws_vpc" "quorum_ap_southeast_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ap-southeast-1", 0)}"

  id = "${lookup(var.quorum_vpcs, "ap-southeast-1")}"
}

data "aws_vpc" "quorum_ap_southeast_2" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ap-southeast-2", 0)}"

  id = "${lookup(var.quorum_vpcs, "ap-southeast-2")}"
}

data "aws_vpc" "quorum_ca_central_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ca-central-1", 0)}"

  id = "${lookup(var.quorum_vpcs, "ca-central-1")}"
}

data "aws_vpc" "quorum_sa_east_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "sa-east-1", 0)}"

  id = "${lookup(var.quorum_vpcs, "sa-east-1")}"
}

data "aws_vpc" "bootnode_us_east_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "us-east-1", 0)}"

  id = "${lookup(var.bootnode_vpcs, "us-east-1")}"
}

data "aws_vpc" "bootnode_us_east_2" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "us-east-2", 0)}"

  id = "${lookup(var.bootnode_vpcs, "us-east-2")}"
}

data "aws_vpc" "bootnode_us_west_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "us-west-1", 0)}"

  id = "${lookup(var.bootnode_vpcs, "us-west-1")}"
}

data "aws_vpc" "bootnode_us_west_2" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "us-west-2", 0)}"

  id = "${lookup(var.bootnode_vpcs, "us-west-2")}"
}

data "aws_vpc" "bootnode_eu_central_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "eu-central-1", 0)}"

  id = "${lookup(var.bootnode_vpcs, "eu-central-1")}"
}

data "aws_vpc" "bootnode_eu_west_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "eu-west-1", 0)}"

  id = "${lookup(var.bootnode_vpcs, "eu-west-1")}"
}

data "aws_vpc" "bootnode_eu_west_2" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "eu-west-2", 0)}"

  id = "${lookup(var.bootnode_vpcs, "eu-west-2")}"
}

data "aws_vpc" "bootnode_ap_south_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ap-south-1", 0)}"

  id = "${lookup(var.bootnode_vpcs, "ap-south-1")}"
}

data "aws_vpc" "bootnode_ap_northeast_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ap-northeast-1", 0)}"

  id = "${lookup(var.bootnode_vpcs, "ap-northeast-1")}"
}

data "aws_vpc" "bootnode_ap_northeast_2" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ap-northeast-2", 0)}"

  id = "${lookup(var.bootnode_vpcs, "ap-northeast-2")}"
}

data "aws_vpc" "bootnode_ap_southeast_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ap-southeast-1", 0)}"


  id = "${lookup(var.bootnode_vpcs, "ap-southeast-1")}"
}

data "aws_vpc" "bootnode_ap_southeast_2" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ap-southeast-2", 0)}"


  id = "${lookup(var.bootnode_vpcs, "ap-southeast-2")}"
}

data "aws_vpc" "bootnode_ca_central_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ca-central-1", 0)}"

  id = "${lookup(var.bootnode_vpcs, "ca-central-1")}"
}

data "aws_vpc" "bootnode_sa_east_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "sa-east-1", 0)}"

  id = "${lookup(var.bootnode_vpcs, "sa-east-1")}"
}

# ---------------------------------------------------------------------------------------------------------------------
# LOAD ROUTE TABLE FOR EACH VPC
# ---------------------------------------------------------------------------------------------------------------------
data "aws_route_table" "vault" {
  vpc_id = "${var.quorum_vault_vpc_id}"
}

data "aws_route_table" "quorum_us_east_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "us-east-1", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "us-east-1")}"
}

data "aws_route_table" "quorum_us_east_2" {
  count = "${lookup(var.quorum_vpc_peering_counts, "us-east-2", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "us-east-2")}"
}

data "aws_route_table" "quorum_us_west_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "us-west-1", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "us-west-1")}"
}

data "aws_route_table" "quorum_us_west_2" {
  count = "${lookup(var.quorum_vpc_peering_counts, "us-west-2", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "us-west-2")}"
}

data "aws_route_table" "quorum_eu_central_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "eu-central-1", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "eu-central-1")}"
}

data "aws_route_table" "quorum_eu_west_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "eu-west-1", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "eu-west-1")}"
}

data "aws_route_table" "quorum_eu_west_2" {
  count = "${lookup(var.quorum_vpc_peering_counts, "eu-west-2", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "eu-west-2")}"
}

data "aws_route_table" "quorum_ap_south_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ap-south-1", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "ap-south-1")}"
}

data "aws_route_table" "quorum_ap_northeast_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ap-northeast-1", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "ap-northeast-1")}"
}

data "aws_route_table" "quorum_ap_northeast_2" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ap-northeast-2", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "ap-northeast-2")}"
}

data "aws_route_table" "quorum_ap_southeast_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ap-southeast-1", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "ap-southeast-1")}"
}

data "aws_route_table" "quorum_ap_southeast_2" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ap-southeast-2", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "ap-southeast-2")}"
}

data "aws_route_table" "quorum_ca_central_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "ca-central-1", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "ca-central-1")}"
}

data "aws_route_table" "quorum_sa_east_1" {
  count = "${lookup(var.quorum_vpc_peering_counts, "sa-east-1", 0)}"

  vpc_id = "${lookup(var.quorum_vpcs, "sa-east-1")}"
}

data "aws_route_table" "bootnode_us_east_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "us-east-1", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "us-east-1")}"
}

data "aws_route_table" "bootnode_us_east_2" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "us-east-2", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "us-east-2")}"
}

data "aws_route_table" "bootnode_us_west_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "us-west-1", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "us-west-1")}"
}

data "aws_route_table" "bootnode_us_west_2" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "us-west-2", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "us-west-2")}"
}

data "aws_route_table" "bootnode_eu_central_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "eu-central-1", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "eu-central-1")}"
}

data "aws_route_table" "bootnode_eu_west_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "eu-west-1", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "eu-west-1")}"
}

data "aws_route_table" "bootnode_eu_west_2" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "eu-west-2", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "eu-west-2")}"
}

data "aws_route_table" "bootnode_ap_south_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ap-south-1", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "ap-south-1")}"
}

data "aws_route_table" "bootnode_ap_northeast_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ap-northeast-1", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "ap-northeast-1")}"
}

data "aws_route_table" "bootnode_ap_northeast_2" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ap-northeast-2", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "ap-northeast-2")}"
}

data "aws_route_table" "bootnode_ap_southeast_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ap-southeast-1", 0)}"


  vpc_id = "${lookup(var.bootnode_vpcs, "ap-southeast-1")}"
}

data "aws_route_table" "bootnode_ap_southeast_2" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ap-southeast-2", 0)}"


  vpc_id = "${lookup(var.bootnode_vpcs, "ap-southeast-2")}"
}

data "aws_route_table" "bootnode_ca_central_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "ca-central-1", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "ca-central-1")}"
}

data "aws_route_table" "bootnode_sa_east_1" {
  count = "${lookup(var.bootnode_vpc_peering_counts, "sa-east-1", 0)}"

  vpc_id = "${lookup(var.bootnode_vpcs, "sa-east-1")}"
}
