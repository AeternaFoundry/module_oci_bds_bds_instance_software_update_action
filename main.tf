resource "oci_bds_bds_instance_software_update_action" "bds_bds_instance_software_update_actions" {
  for_each = var.bds_bds_instance_software_update_actions

  bds_instance_id      = each.value.bds_instance_id
  software_update_keys = each.value.software_update_keys

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

