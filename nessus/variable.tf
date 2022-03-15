variable "gce_vm_details" {
  type = map(object({
    instance_name                   = string
    gce_machine_type                = string
    gce_zone                        = string
    gce_labels                      = map(string)
    gce_tags                        = list(string)
    project_id                      = string
    disk_size                       = string
    vpc_network                     = string
    startup_scripts                 = string
    ipv4_add                        = string
    subnetwork                      = string
    address                         = string
  }))
}
