variable "instance_name" {
    description = "Name of GCE Instance"
    type = string  
}

variable "gce_machine_type" {
  type        = string
  description = "GCE machine_type"
}
variable "gce_zone" {
  type        = string
  description = "GCE zone to create VM in"
}
variable "gce_labels" {
  type        = map(string)
  description = "optional labels to attch to VM"
}
variable "gce_tags" {
  type        = list(string)
  description = "gce_tags to attch to VM"
}
variable "project_id" {
  type        = string
  description = "GCP project ID"
}
variable "disk_size" {
  type        = string
  default = "100"
  description = "GCE boot disk size"
}
variable "startup_scripts" {
  type        = string
  default       = "echo hi > /test.txt"
  description = "Startup script either file or commands"
} 
variable "vpc_network" {
  type        = string
  default       = "default"
  description = "VPC network to host GCE VMS intos"
}
variable "ipv4_add" {
  type        = string
  description = "Static IPV4 address"
}
variable "address" {
  type        = string
  description = "Static IPV4 address"
}
variable "subnetwork" {
  type        = string
  description = "subnetwork name"
}