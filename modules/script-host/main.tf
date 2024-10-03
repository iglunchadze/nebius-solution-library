# modules/bastion/main.tf

resource "yandex_compute_instance" "bastion" {
  count = var.create_bastion ? 1 : 0

  name        = "bastion"
  platform_id = var.platform_id
  zone        = var.zone
  labels      = var.labels

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_family   = var.image_family
      image_folder_id = var.image_folder_id != "" ? var.image_folder_id : null
      size           = var.disk_size
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = merge({
    ssh-keys   = "ubuntu:${var.public_ssh_key}"
    user-data  = file("${path.module}/files/cloud-config.yaml")
  }, var.additional_metadata)
}