variable "region" {
  description = "The region where the subnetworks will be created."
  type        = string
}

variable "name" {
  description = "The suffix name for the resources being created."
  type        = string
}

variable "network_name" {
  description = "The name of the network where the subnetworks will be created."
  type        = string
}

variable "project_id" {
  description = "The ID of the project where the subnetworks will be created."
  type        = string
}

variable "flow_logs" {
  type        = bool
  default     = false
  description = "Enable or disable flow logging."
}

variable "log_config" {
  description = "The logging options for the subnetwork flow logs. Setting this value to `null` will disable them. See https://www.terraform.io/docs/providers/google/r/compute_subnetwork.html for more information and examples."
  type = object({
    aggregation_interval = string
    flow_sampling        = number
    metadata             = string
  })

  default = {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }
}

variable "purpose" {
  description = "The purpose of the subnetworks."
  type        = string
  default     = "PRIVATE"
}

variable "role" {
  description = "The role of the subnetworks."
  type        = string
  default     = "ACTIVE"
}

variable "stack_type" {
  description = "The stack type of the subnetworks."
  type        = string
  default     = "IPV4_ONLY"
}

variable "private_ip_google_access" {
  description = "Flag to enable or disable private IP Google access."
  type        = bool
  default     = false
}

variable "private_ipv6_google_access" {
  description = "Flag to enable or disable private IPv6 Google access."
  type        = bool
  default     = null
}

variable "secondary_range_names" {
  type        = list(string)
  default     = []
  description = "List of secondary subnet range names."
}

variable "secondary_ip_cidr_ranges" {
  type        = list(string)
  default     = []
  description = "List of secondary subnet IP CIDR ranges."
}

variable "ip_cidr_range" {
  type        = string
  description = "The IP CIDR range for the subnet."
}
