module "network" {
  source = "./modules/network"
}




module "compute" {
  source          = "./modules/compute"
  ami_id          = var.ami_id  # Amazon Linux 2 (change if needed)
  instance_type = var.instance_type
  subnet_id       = module.network.subnet_id
  security_group_id = module.network.security_group_id
  key_name        = var.key_name 

}
