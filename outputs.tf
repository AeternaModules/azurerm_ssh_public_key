output "ssh_public_keys" {
  description = "All ssh_public_key resources"
  value       = azurerm_ssh_public_key.ssh_public_keys
}
output "ssh_public_keys_location" {
  description = "List of location values across all ssh_public_keys"
  value       = [for k, v in azurerm_ssh_public_key.ssh_public_keys : v.location]
}
output "ssh_public_keys_name" {
  description = "List of name values across all ssh_public_keys"
  value       = [for k, v in azurerm_ssh_public_key.ssh_public_keys : v.name]
}
output "ssh_public_keys_public_key" {
  description = "List of public_key values across all ssh_public_keys"
  value       = [for k, v in azurerm_ssh_public_key.ssh_public_keys : v.public_key]
}
output "ssh_public_keys_resource_group_name" {
  description = "List of resource_group_name values across all ssh_public_keys"
  value       = [for k, v in azurerm_ssh_public_key.ssh_public_keys : v.resource_group_name]
}
output "ssh_public_keys_tags" {
  description = "List of tags values across all ssh_public_keys"
  value       = [for k, v in azurerm_ssh_public_key.ssh_public_keys : v.tags]
}

