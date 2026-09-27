module "web_tier" {
  source = "./modules/web-tier"

  location             = var.location
  project_name         = var.project_name
  vm_sku               = var.vm_sku
  instance_count       = var.instance_count
  address_space        = var.address_space
  subnet_prefixes      = var.subnet_prefixes
  tags                 = var.tags
  admin_ssh_public_key = var.admin_ssh_public_key
  cloud_init_path      = "${path.root}/cloud-init.yaml"
}