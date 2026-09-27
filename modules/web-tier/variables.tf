variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
}

variable "project_name" {
  description = "Project name used as the prefix for resource naming."
  type        = string
}

variable "vm_sku" {
  description = "Azure VM SKU used by the Virtual Machine Scale Set."
  type        = string
}

variable "instance_count" {
  description = "Number of VM instances in the scale set."
  type        = number

  validation {
    condition     = var.instance_count >= 2
    error_message = "instance_count must be at least 2 to maintain N+1 capacity."
  }
}

variable "address_space" {
  description = "Address space assigned to the virtual network."
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "Address prefixes assigned to the web subnet."
  type        = list(string)
}

variable "tags" {
  description = "Common tags applied to supported Azure resources."
  type        = map(string)
}

variable "admin_ssh_public_key" {
  description = "SSH public key used for VM administration."
  type        = string
  sensitive   = true
}

variable "cloud_init_path" {
  description = "Path to the cloud-init configuration used to provision the web instances."
  type        = string
}