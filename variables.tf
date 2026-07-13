variable "ssh_public_keys" {
  description = <<EOT
Map of ssh_public_keys, attributes below
Required:
    - location
    - name
    - public_key
    - resource_group_name
Optional:
    - tags
EOT

  type = map(object({
    location            = string
    name                = string
    public_key          = string
    resource_group_name = string
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ssh_public_keys : (
        can(regex("^[-a-zA-Z0-9(_).]{1,128}$", v.name))
      )
    ])
    error_message = "Public SSH Key name must be 1 - 128 characters long, can contain letters, numbers, underscores, dots and hyphens (but the first and last character must be a letter or number)."
  }
  validation {
    condition = alltrue([
      for k, v in var.ssh_public_keys : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssh_public_keys : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssh_public_keys : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssh_public_keys : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

