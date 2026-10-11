variable "bds_bds_instance_software_update_actions" {
  description = <<EOT
Map of bds_bds_instance_software_update_actions, attributes below
Required:
    - bds_instance_id
    - software_update_keys
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    bds_instance_id      = string
    software_update_keys = list(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

