module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  availability_zone   = var.availability_zone
}

module "compute" {
  source         = "./modules/compute"
  instance_count = 4
  instance_type  = var.instance_type
  ebs_sizes      = var.ebs_sizes
  subnet_id      = module.vpc.subnet_id
  vpc_id         = module.vpc.vpc_id
  key_name       = var.key_name
}
