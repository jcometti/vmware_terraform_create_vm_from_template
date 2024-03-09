#===========================#
# VMware vCenter connection #
#===========================#

variable "vsphere_user" {
  type        = string
  description = "VMware vSphere user name"
  sensitive   = true
}

variable "vsphere_password" {
  type        = string
  description = "VMware vSphere password"
  sensitive   = true
}

variable "vsphere_vcenter" {
  type        = string
  description = "VMWare vCenter server FQDN / IP"
  sensitive   = true
}

variable "vsphere-unverified-ssl" {
  type        = string
  description = "Is the VMware vCenter using a self signed certificate (true/false)"
}

variable "vsphere-datacenter" {
  type        = string
  description = "VMWare vSphere datacenter"
}

variable "vsphere-cluster" {
  type        = string
  description = "VMWare vSphere cluster"
  default     = ""
}

variable "vsphere-template-folder" {
  type        = string
  description = "Template folder"
  default     = "Templates"
}

#================================#
# VMware vSphere virtual machine #
#================================#

variable "name" {
  type        = string
  description = "The name of the vSphere virtual machines and the hostname of the machine"
}

variable "vm-name-prefix" {
  type        = string
  description = "Name of VM prefix"
  default     = "k3sup"
}

variable "vm-datastore" {
  type        = string
  description = "Datastore used for the vSphere virtual machines"
}

variable "vm-network" {
  type        = string
  description = "Network used for the vSphere virtual machines"
}

variable "vm-linked-clone" {
  type        = string
  description = "Use linked clone to create the vSphere virtual machine from the template (true/false). If you would like to use the linked clone feature, your template need to have one and only one snapshot"
  default     = "false"
}

variable "cpu" {
  description = "Number of vCPU for the vSphere virtual machines"
  default     = 2
}

variable "cores-per-socket" {
  description = "Number of cores per cpu for workers"
  default     = 1
}

variable "ram" {
  description = "Amount of RAM for the vSphere virtual machines (example: 2048)"
}

variable "disksize" {
  description = "Disk size, example 100 for 100 GB"
  default     = ""
}

variable "vm-guest-id" {
  type        = string
  description = "The ID of virtual machines operating system"
}

variable "vm-template-name" {
  type        = string
  description = "The template to clone to create the VM"
}

variable "vm-domain" {
  type        = string
  description = "Linux virtual machine domain name for the machine. This, along with host_name, make up the FQDN of the virtual machine"
  default     = ""
}

variable "dns_server_list" {
  type        = list(string)
  description = "List of DNS servers"
  default     = ["8.8.8.8", "8.8.4.4", "192.168.1.49"]
}

variable "ipv4_address" {
  type        = string
  description = "ipv4 addresses for a vm"
}

variable "ipv4_gateway" {
  type = string
}

variable "ipv4_netmask" {
  type = string
}

variable "ssh_username" {
  type      = string
  sensitive = true
  default   = "jcometti"
}

variable "public_key" {
  type        = string
  description = "Public key to be used to ssh into a machine"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC8/3+YtVxunoWwy1VAUKGYRIrB06OkqNnXPuYDfX1eM4Ltue004NMcqQO8SCKZcEtWVFDQwQ0e2gPKiLKDHvqApqIdL4wY+L0lx1ST8PFe7TUj9k6Z3pVRnI51WYRJr35GGH/7whMeS4UC8yy9tj0LL5u6NF5wdAid+dNiK60htEe46zs590p4lisErxFebkhM5hJ33hR57Roa4kNI1NqvzlnBeQv2akwqwAep4vg57vZpVGXqv9F7RyJp2Qi74bKRo8FqpNOvltfwrt5lyPOvd615vJpEG8CYk9cAErqNp0rKKCnKq0ELnXc5HPnygYBSGZdln254xmdgCmrltkLZp8R2l4zOEoY4i6I8D1ZqqIIobHgxPL0ZJxOc4saf/fK/EOLd0YnY87sepPhKBS05RBGoCPhtglvtL8Gc04/g5rf+5J82YXlqUVcwR8qOUyHj96toh646SUE6QLHyUW9ravGFhQoPs8e906JSu3mQVBbI7bq9VrIxz0M/T97LcP8= jcometti@Joaos-MacBook-Pro.local"
}
