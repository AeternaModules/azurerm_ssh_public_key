output "ssh_public_keys_id" {
  description = "Map of id values across all ssh_public_keys, keyed the same as var.ssh_public_keys"
  value       = { for k, v in azurerm_ssh_public_key.ssh_public_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssh_public_keys_location" {
  description = "Map of location values across all ssh_public_keys, keyed the same as var.ssh_public_keys"
  value       = { for k, v in azurerm_ssh_public_key.ssh_public_keys : k => v.location if v.location != null && length(v.location) > 0 }
}
output "ssh_public_keys_name" {
  description = "Map of name values across all ssh_public_keys, keyed the same as var.ssh_public_keys"
  value       = { for k, v in azurerm_ssh_public_key.ssh_public_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ssh_public_keys_public_key" {
  description = "Map of public_key values across all ssh_public_keys, keyed the same as var.ssh_public_keys"
  value       = { for k, v in azurerm_ssh_public_key.ssh_public_keys : k => v.public_key if v.public_key != null && length(v.public_key) > 0 }
}
output "ssh_public_keys_resource_group_name" {
  description = "Map of resource_group_name values across all ssh_public_keys, keyed the same as var.ssh_public_keys"
  value       = { for k, v in azurerm_ssh_public_key.ssh_public_keys : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "ssh_public_keys_tags" {
  description = "Map of tags values across all ssh_public_keys, keyed the same as var.ssh_public_keys"
  value       = { for k, v in azurerm_ssh_public_key.ssh_public_keys : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

