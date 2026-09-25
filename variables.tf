variable "location" {
  description = "Azure region used for the deployment."
  type        = string
  default     = "australiaeast"
}

variable "project_name" {
  description = "Prefix used when naming project resources."
  type        = string
  default     = "web-lab"
}

variable "vm_sku" {
  description = "Azure VM SKU used by the web tier."
  type        = string
  default     = "Standard_B2pts_v2"
}

variable "instance_count" {
  description = "Number of VM Scale Set instances."
  type        = number
  default     = 2

  validation {
    condition     = var.instance_count >= 2
    error_message = "At least two instances are required to maintain N+1 web capacity."
  }
}

variable "address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "subnet_prefixes" {
  description = "Address prefixes used by the web subnet."
  type        = list(string)
  default     = ["10.10.1.0/24"]
}

variable "tags" {
  description = "Common tags applied to project resources."
  type        = map(string)

  default = {
    Project     = "azure-auto-healing-web-tier"
    Environment = "lab"
    ManagedBy   = "Terraform"
  }
}