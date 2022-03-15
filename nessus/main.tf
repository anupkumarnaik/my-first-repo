module "nessus-gce-vms" {
  source                                  = "./../modules/gce-vm"
  for_each                                = var.gce_vm_details

  instance_name                           = each.value.instance_name
  gce_machine_type                        = each.value.gce_machine_type
  gce_zone                                = each.value.gce_zone
  gce_labels                              = each.value.gce_labels
  gce_tags                                = each.value.gce_tags
  project_id                              = each.value.project_id
  disk_size                               = each.value.disk_size
  vpc_network                             = each.value.vpc_network
  startup_scripts                         = each.value.startup_scripts
  ipv4_add                                = each.value.ipv4_add
  subnetwork                              = each.value.subnetwork
  address                                 = each.value.address
}
