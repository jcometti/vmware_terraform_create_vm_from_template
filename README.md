# Deploy a Virtual Machine from Template in vSphere 8.0

Welcome! This repository was designed to automate the deploy of a single VM from a template in vCenter 8.0 using Terraform. 

## Tree

├── README.md
├── main.tf
├── output.tf
├── templates
│   ├── metadata.yaml
│   └── userdata.yaml
├── terraform.tfstate
├── terraform.tfvars
├── variables.tf
└── vars.auto.tfvars

## Table of Contents
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contact](#contact)

## Getting Started

This project was developed and tested on an Intel NUC 13 Pro i5 with 64GB RAM, serving as the physical server. The server runs VMware ESXi 8.0, vCenter 8.0, and a VyOS server for communication within the home network and the internal lab.

## Prerequisites

Ensure the following prerequisites are met before proceeding:

- ESXi 6.7 or later
- vCenter 6.7 or later
- 01 template for use. Check out [this link](https://github.com/jcometti/vmware_packer_ubuntu_20.04.git) for instructions on creating a template using Packer. The provided template was used to create the template in vCenter.

## Installation

Follow these steps for installation:

1. Install Packer: [Getting Started with Packer](https://developer.hashicorp.com/packer/tutorials/docker-get-started/get-started-install-cli)
2. Install the vSphere plugin: [Packer vSphere Plugin](https://developer.hashicorp.com/packer/integrations/hashicorp/vsphere)

## Generating a Hashed Password for Identity in user-data

To generate a hashed password, follow the instructions in the [official documentation](https://canonical-subiquity.readthedocs-hosted.com/en/latest/reference/autoinstall-reference.html). OpenSSL was used in this instance, but you can use `mkpasswd` from the `whois` package.

```bash
openssl passwd -6 -salt $(openssl rand -base64 12) ubuntu
```

## Running Packer Build with HCL
Execute the following command to build with HCL:

```bash
packer build -force -on-error=ask -var-file variables.pkrvars100GBdisk.hcl -var-file vsphere.pkrvars.hcl ubuntu-22.04.pkr.hcl
```

## Contact 

If you have any questions, encounter issues, or have suggestions, please feel free to open an issue on GitHub or reach out to the maintainer at joao.cometti@gmail.com.