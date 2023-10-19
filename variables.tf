variable "name" {
  description = "A name for the affinity rule."
  type        = string
}

variable "polarity" {
  description = "Polarity for this rule, either Affinity or Anti-Affinity"
  type        = string
  default     = null
}

variable "vm_ids" {
  description = "List of VM ids used in this affinity rule."
  type        = any
  default     = []
}

variable "vdc_org_name" {
  description = "The name of the organization to use."
  type        = string
}

variable "vdc_name" {
  description = "The name of VDC to use."
  type        = string
  default     = null
}

variable "required" {
  description = "True if this affinity rule is required. When a rule is mandatory, a host failover will not power on the VM if doing so would violate the rule. "
  type        = bool
  default     = true
}

variable "enabled" {
  description = "True if this affinity rule is enabled."
  type        = bool
  default     = true
}
