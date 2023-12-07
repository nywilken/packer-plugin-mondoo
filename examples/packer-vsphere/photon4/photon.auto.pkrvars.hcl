# Copyright 2023 Broadcom. All rights reserved.
# SPDX-License-Identifier: BSD-2

/*
    DESCRIPTION:
    VMware Photon OS 4 build variables.
    Packer Plugin for VMware vSphere: 'vsphere-iso' builder.
*/

// Guest Operating Systtem Metadata
vm_guest_os_family  = "linux"
vm_guest_os_name    = "photon"
vm_guest_os_version = "4.0"

// Virtual Machine Guest Operating Systtem Setting
vm_guest_os_type = "vmwarePhoton64Guest"

// Virtual Machine Hardware Settings
vm_firmware              = "efi-secure"
vm_cdrom_type            = "sata"
vm_cpu_count             = 2
vm_cpu_cores             = 1
vm_cpu_hot_add           = false
vm_mem_size              = 2048
vm_mem_hot_add           = false
vm_disk_size             = 40960
vm_disk_controller_type  = ["pvscsi"]
vm_disk_thin_provisioned = true
vm_network_card          = "vmxnet3"

// Removable Media Settings
// see https://github.com/vmware/photon/wiki/Downloading-Photon-OS
iso_path           = "packer_cache/"
iso_file           = "photon-4.0-c001795b8.iso"
iso_url            = "https://packages.vmware.com/photon/4.0/Rev2/iso/photon-4.0-c001795b8.iso"
iso_checksum_type  = "md5"
iso_checksum_value = "5af288017d0d1198dd6bd02ad40120eb"

// Boot Settings
vm_boot_order = "disk,cdrom"
vm_boot_wait  = "3s"

// Communicator Settings
communicator_port    = 22
communicator_timeout = "30m"