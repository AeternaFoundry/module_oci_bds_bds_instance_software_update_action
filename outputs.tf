output "bds_bds_instance_software_update_actions_id" {
  description = "Map of id values across all bds_bds_instance_software_update_actions, keyed the same as var.bds_bds_instance_software_update_actions except keys with no id are omitted"
  value       = { for k, v in oci_bds_bds_instance_software_update_action.bds_bds_instance_software_update_actions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bds_bds_instance_software_update_actions_bds_instance_id" {
  description = "Map of bds_instance_id values across all bds_bds_instance_software_update_actions, keyed the same as var.bds_bds_instance_software_update_actions except keys with no bds_instance_id are omitted"
  value       = { for k, v in oci_bds_bds_instance_software_update_action.bds_bds_instance_software_update_actions : k => v.bds_instance_id if v.bds_instance_id != null && length(v.bds_instance_id) > 0 }
}
output "bds_bds_instance_software_update_actions_software_update_keys" {
  description = "Map of software_update_keys values across all bds_bds_instance_software_update_actions, keyed the same as var.bds_bds_instance_software_update_actions except keys with no software_update_keys are omitted"
  value       = { for k, v in oci_bds_bds_instance_software_update_action.bds_bds_instance_software_update_actions : k => v.software_update_keys if v.software_update_keys != null && length(v.software_update_keys) > 0 }
}

