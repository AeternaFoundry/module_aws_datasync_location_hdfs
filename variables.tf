variable "datasync_location_hdfs" {
  description = <<EOT
Map of datasync_location_hdfs, attributes below
Required:
    - agent_arns
    - name_node (block):
        - hostname (required)
        - port (required)
Optional:
    - authentication_type
    - block_size
    - kerberos_keytab
    - kerberos_keytab_base64
    - kerberos_krb5_conf
    - kerberos_krb5_conf_base64
    - kerberos_principal
    - kms_key_provider_uri
    - region
    - replication_factor
    - simple_user
    - subdirectory
    - tags
    - tags_all
    - qop_configuration (block):
        - data_transfer_protection (optional)
        - rpc_protection (optional)
EOT

  type = map(object({
    agent_arns                = set(string)
    authentication_type       = optional(string)
    block_size                = optional(number)
    kerberos_keytab           = optional(string)
    kerberos_keytab_base64    = optional(string)
    kerberos_krb5_conf        = optional(string)
    kerberos_krb5_conf_base64 = optional(string)
    kerberos_principal        = optional(string)
    kms_key_provider_uri      = optional(string)
    region                    = optional(string)
    replication_factor        = optional(number)
    simple_user               = optional(string)
    subdirectory              = optional(string)
    tags                      = optional(map(string))
    tags_all                  = optional(map(string))
    name_node = list(object({
      hostname = string
      port     = number
    }))
    qop_configuration = optional(object({
      data_transfer_protection = optional(string)
      rpc_protection           = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_hdfs : (
        length(v.name_node) >= 1
      )
    ])
    error_message = "Each name_node list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_hdfs : (
        v.block_size == null || (((v.block_size % 512) == 0) && (v.block_size >= 1048576 && v.block_size <= 1073741824))
      )
    ])
    error_message = "all of: must be divisible by 512; must be between 1048576 and 1073741824"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_hdfs : (
        v.kerberos_principal == null || (length(v.kerberos_principal) >= 1 && length(v.kerberos_principal) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_hdfs : (
        v.kms_key_provider_uri == null || (length(v.kms_key_provider_uri) >= 1 && length(v.kms_key_provider_uri) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_hdfs : (
        alltrue([for item in v.name_node : (length(item.hostname) >= 1 && length(item.hostname) <= 255)])
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_hdfs : (
        v.replication_factor == null || (v.replication_factor >= 1 && v.replication_factor <= 512)
      )
    ])
    error_message = "must be between 1 and 512"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_hdfs : (
        v.simple_user == null || (length(v.simple_user) >= 1 && length(v.simple_user) <= 255)
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_hdfs : (
        v.subdirectory == null || (length(v.subdirectory) >= 1 && length(v.subdirectory) <= 4096)
      )
    ])
    error_message = "must be between 1 and 4096 characters"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

