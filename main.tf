resource "vcd_vm_affinity_rule" "vm_affinity_rule" {
  org      = var.vdc_org_name
  vdc      = var.vdc_name
  name     = var.name
  required = var.required
  enabled  = var.enabled
  polarity = var.polarity
  vm_ids   = var.vm_ids
}
