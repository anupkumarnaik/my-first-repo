gce_vm_details = {
  "nessus-scanner-1" = {
    instance_name                   = "nessus-scanner-1",
    gce_machine_type                = "e2-micro",
    gce_zone                        = "us-east1-b",
    gce_labels                      = { "environment" = "dev", "org" = "prd", "service" = "nessus-scanner"},
    gce_tags                        = ["dev", "abx", "nessus-scanner"],
    project_id                      = "extreme-signal-342905",
    disk_size                       = "50",
    vpc_network                     = "default",
    startup_scripts                 = "echo hi > /test.txt",
    ipv4_add                        = "nessus-scanner-ipv4"
  },
  "nessus-agent-collector-1" = {
    instance_name                   = "nessus-agent-collector-1",
    gce_machine_type                = "e2-micro",
    gce_zone                        = "us-east1-b",
    gce_labels                      = { "environment" = "dev", "org" = "abs-lab", "service" = "nessus-agent-collector"},
    gce_tags                        = ["dev", "ggg", "nessus-agent-collector"],
    project_id                      = "extreme-signal-342905",
    disk_size                       = "50",
    vpc_network                     = "default",
    startup_scripts                 = "echo hi > /test.txt",
    ipv4_add                        = "nessus-collector-ipv4"
  },
}
