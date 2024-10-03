# modules/bastion/variables.tf

variable "create_bastion" {
  description = "Whether to create the bastion host"
  type        = bool
}

variable "platform_id" {
  description = "Platform ID for the instance"
  type        = string
}

variable "zone" {
  description = "Availability zone"
  type        = string
}

variable "cores" {
  description = "Number of CPU cores"
  type        = number
}

variable "memory" {
  description = "Amount of RAM in GB"
  type        = number
}

variable "image_family" {
  description = "Image family for the boot disk"
  type        = string
}

variable "image_folder_id" {
  description = "Folder ID where the image is located"
  type        = string
  default     = ""
}

variable "disk_size" {
  description = "Size of the boot disk in GB"
  type        = number
}

variable "subnet_id" {
  description = "ID of the subnet to attach the instance to"
  type        = string
}

variable "public_ssh_key" {
  description = "Public SSH key for access"
  type        = string
}

variable "labels" {
  description = "Labels to attach to the instance"
  type        = map(string)
  default     = {}
}

variable "additional_metadata" {
  description = "Additional metadata to attach to the instance"
  type        = map(string)
  default     = {}
}