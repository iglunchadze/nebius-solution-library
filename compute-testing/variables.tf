# K8s cluster
variable "parent_id" {
  description = "Project ID."
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "Subnet ID."
  type        = string
  default     = ""
}

variable "k8s_version" {
  description = "Kubernetes version to be used in the cluster."
  type        = string
  default     = "1.30"
}

# K8s filestore
variable "enable_filestore" {
  description = "Use Filestore."
  type        = bool
  default     = false
}

variable "filestore_disk_type" {
  description = "Filestore disk size in bytes."
  type        = string
  default     = "NETWORK_SSD"
}

variable "filestore_disk_size" {
  description = "Filestore disk size in bytes."
  type        = number
  default     = 1073741824
}

variable "filestore_block_size" {
  description = "Filestore block size in bytes."
  type        = number
  default     = 4096
}


# K8s access
variable "ssh_user_name" {
  description = "SSH username."
  type        = string
  default     = ""
}

variable "public_ssh_key" {
  description = "SSH public key."
  type        = string
  default     = ""
}

# K8s CPU node group
variable "cpu_nodes_count" {
  description = "Number of nodes in the CPU-only node group."
  type        = number
  default     = 3
}

variable "cpu_nodes_platform" {
  description = "Platform for nodes in the CPU-only node group."
  type        = string
  default     = "cpu-e2"
}

variable "cpu_nodes_preset" {
  description = "CPU and RAM configuration for nodes in the CPU-only node group."
  type        = string
  default     = "16vcpu-64gb"
}

variable "cpu_disk_type" {
  description = "Disk type for nodes in the CPU-only node group."
  type        = string
  default     = "NETWORK_SSD"
}

variable "cpu_disk_size" {
  description = "Disk size (in GB) for nodes in the CPU-only node group."
  type        = string
  default     = "128"
}

# K8s GPU node group
variable "gpu_nodes_count" {
  description = "Number of nodes in the GPU node group."
  type        = number
  default     = 2
}

variable "gpu_nodes_platform" {
  description = "Platform for nodes in the GPU node group."
  type        = string
  default     = "gpu-h100-sxm"
}

variable "gpu_nodes_preset" {
  description = "Configuration for GPU amount, CPU, and RAM for nodes in the GPU node group."
  type        = string
  default     = "8gpu-160vcpu-1600gb"
}

variable "gpu_disk_type" {
  description = "Disk type for nodes in the GPU node group."
  type        = string
  default     = "NETWORK_SSD"
}

variable "gpu_disk_size" {
  description = "Disk size (in GB) for nodes in the GPU node group."
  type        = string
  default     = "1023"
}

# Observability
variable "enable_grafana" {
  description = "Enable Grafana."
  type        = bool
  default     = true
}

variable "enable_loki" {
  description = "Enable Loki for logs aggregation."
  type        = bool
  default     = true
}

variable "enable_prometheus" {
  description = "Enable Prometheus for metrics collection."
  type        = bool
  default     = true
}

variable "enable_dcgm" {
  description = "Enable dcgm for GPU metrics collection."
  type        = bool
  default     = true
}

variable "loki_aws_access_key_id" {
  type    = string
  default = ""
}

variable "loki_secret_key" {
  type    = string
  default = ""
}


# Helm
variable "iam_token" {
  description = "Token for Helm provider authentication."
  type        = string
  default     = ""
}
