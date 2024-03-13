cpu                    = 2
cores-per-socket       = 1
ram                    = 4096
disksize               = 100 # in GB
vm-guest-id            = "ubuntu64Guest"
vsphere-unverified-ssl = "true"
vsphere-datacenter     = "Physical-Datacenter"
vsphere-cluster        = "physical-Cluster"
vm-datastore           = "NVMe"
vm-network             = "Home Network"
vm-domain              = "homelab.local"
dns_server_list        = ["192.168.1.49", "8.8.8.8"]
name                   = "lab-k8s-m01"
ipv4_address           = "192.168.1.120"
ipv4_gateway           = "192.168.1.48"
ipv4_netmask           = "24"
vm-template-name       = "Ubuntu-2204-Template-100GB-Thin"

vms = {
  lab-k8s-test_01 = {
    name         = "lab-k8s-w01"
    ipv4_address = "192.168.1.121"
  },
  lab-k8s-test_02 = {
    name         = "lab-k8s-w02"
    ipv4_address = "192.168.1.22"
  }
}
