output "datasync_location_hdfs_id" {
  description = "Map of id values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datasync_location_hdfs_agent_arns" {
  description = "Map of agent_arns values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.agent_arns if v.agent_arns != null && length(v.agent_arns) > 0 }
}
output "datasync_location_hdfs_arn" {
  description = "Map of arn values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "datasync_location_hdfs_authentication_type" {
  description = "Map of authentication_type values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.authentication_type if v.authentication_type != null && length(v.authentication_type) > 0 }
}
output "datasync_location_hdfs_block_size" {
  description = "Map of block_size values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.block_size if v.block_size != null }
}
output "datasync_location_hdfs_kerberos_keytab" {
  description = "Map of kerberos_keytab values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.kerberos_keytab if v.kerberos_keytab != null && length(v.kerberos_keytab) > 0 }
}
output "datasync_location_hdfs_kerberos_keytab_base64" {
  description = "Map of kerberos_keytab_base64 values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.kerberos_keytab_base64 if v.kerberos_keytab_base64 != null && length(v.kerberos_keytab_base64) > 0 }
}
output "datasync_location_hdfs_kerberos_krb5_conf" {
  description = "Map of kerberos_krb5_conf values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.kerberos_krb5_conf if v.kerberos_krb5_conf != null && length(v.kerberos_krb5_conf) > 0 }
}
output "datasync_location_hdfs_kerberos_krb5_conf_base64" {
  description = "Map of kerberos_krb5_conf_base64 values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.kerberos_krb5_conf_base64 if v.kerberos_krb5_conf_base64 != null && length(v.kerberos_krb5_conf_base64) > 0 }
}
output "datasync_location_hdfs_kerberos_principal" {
  description = "Map of kerberos_principal values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.kerberos_principal if v.kerberos_principal != null && length(v.kerberos_principal) > 0 }
}
output "datasync_location_hdfs_kms_key_provider_uri" {
  description = "Map of kms_key_provider_uri values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.kms_key_provider_uri if v.kms_key_provider_uri != null && length(v.kms_key_provider_uri) > 0 }
}
output "datasync_location_hdfs_name_node" {
  description = "Map of name_node values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.name_node if v.name_node != null && length(v.name_node) > 0 }
}
output "datasync_location_hdfs_qop_configuration" {
  description = "Map of qop_configuration values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => one(v.qop_configuration) if v.qop_configuration != null && length(v.qop_configuration) > 0 }
}
output "datasync_location_hdfs_region" {
  description = "Map of region values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "datasync_location_hdfs_replication_factor" {
  description = "Map of replication_factor values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.replication_factor if v.replication_factor != null }
}
output "datasync_location_hdfs_simple_user" {
  description = "Map of simple_user values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.simple_user if v.simple_user != null && length(v.simple_user) > 0 }
}
output "datasync_location_hdfs_subdirectory" {
  description = "Map of subdirectory values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.subdirectory if v.subdirectory != null && length(v.subdirectory) > 0 }
}
output "datasync_location_hdfs_tags" {
  description = "Map of tags values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "datasync_location_hdfs_tags_all" {
  description = "Map of tags_all values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "datasync_location_hdfs_uri" {
  description = "Map of uri values across all datasync_location_hdfs, keyed the same as var.datasync_location_hdfs"
  value       = { for k, v in aws_datasync_location_hdfs.datasync_location_hdfs : k => v.uri if v.uri != null && length(v.uri) > 0 }
}

