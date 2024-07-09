variable "humber_id" {
  description = "Humber ID for resource naming"
  type        = string
}

variable "location" {
  description = "Azure location for the resources"
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
}

variable "admin_username" {
  description = "Admin username for virtual machines"
  type        = string
}

variable "admin_password" {
  description = "Admin password for Windows virtual machines"
  type        = string
  sensitive   = true
}

variable "public_key_path" {
  description = "Path to the public key for SSH access"
  type        = string
}

variable "private_key_path" {
  description = "Path to the private key for SSH access"
  type        = string
  sensitive   = true
}

variable "linux_vm_names" {
  description = "List of Linux VM names"
  type        = list(string)
}

variable "linux_vm_size" {
  description = "Size of the Linux VMs"
  type        = string
}

variable "windows_vm_count" {
  description = "Number of Windows VMs"
  type        = number
}

variable "windows_vm_size" {
  description = "Size of the Windows VMs"
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "ID of the Log Analytics workspace"
  type        = string
}

variable "postgresql_version" {
  description = "The version of PostgreSQL to use"
  type        = string
  default     = "11"
}

variable "ssl_enforcement_enabled" {
  description = "Whether SSL enforcement is enabled"
  type        = bool
  default     = true
}
