output "public_ip_address" {
  description = "Public IP address of the Azure Load Balancer."
  value       = azurerm_public_ip.web.ip_address
}

output "web_url" {
  description = "HTTP URL for the load-balanced NGINX web tier."
  value       = "http://${azurerm_public_ip.web.ip_address}"
}

output "resource_group_name" {
  description = "Name of the Azure resource group."
  value       = azurerm_resource_group.main.name
}

output "vm_scale_set_name" {
  description = "Name of the Azure Virtual Machine Scale Set."
  value       = azurerm_linux_virtual_machine_scale_set.web.name
}