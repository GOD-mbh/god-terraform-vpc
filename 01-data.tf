#data

data "aws_availability_zones" "available" {}

data "template_file" "public" {
  count    = length(local.zones)
  template = "10.${var.network}.${count.index}.0/24"
}

data "template_file" "private" {
  count    = length(local.zones)
  template = "10.${var.network}.20${count.index}.0/24"
}
