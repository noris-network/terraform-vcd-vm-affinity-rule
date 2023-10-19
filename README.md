# terraform-vcd_vm_affinity_rule

Terraform module which manages VM Affinity on VMWare Cloud Director.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.9 |
| <a name="requirement_vcd"></a> [vcd](#requirement\_vcd) | >= 3.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vcd"></a> [vcd](#provider\_vcd) | 3.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vcd_vm_affinity_rule.vm_affinity_rule](https://registry.terraform.io/providers/vmware/vcd/latest/docs/resources/vm_affinity_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | A name for the affinity rule. | `string` | n/a | yes |
| <a name="input_vdc_org_name"></a> [vdc\_org\_name](#input\_vdc\_org\_name) | The name of the organization to use. | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | True if this affinity rule is enabled. | `bool` | `true` | no |
| <a name="input_polarity"></a> [polarity](#input\_polarity) | Polarity for this rule, either Affinity or Anti-Affinity | `string` | `null` | no |
| <a name="input_required"></a> [required](#input\_required) | True if this affinity rule is required. When a rule is mandatory, a host failover will not power on the VM if doing so would violate the rule. | `bool` | `true` | no |
| <a name="input_vdc_name"></a> [vdc\_name](#input\_vdc\_name) | The name of VDC to use. | `string` | `null` | no |
| <a name="input_vm_ids"></a> [vm\_ids](#input\_vm\_ids) | List of VM ids used in this affinity rule. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the affinity rule. |
<!-- END_TF_DOCS -->

## Examples

```
module "vm_affinity_rule_nbg6d" {
  source       = "git::https://github.com/noris-network/terraform-vcd-vm-affinity-rule?ref=1.0.0"
  vdc_org_name = "myORG"
  vdc_name     = "myDC01"
  name         = "affinity_rule"
  polarity     = "Anti-Affinity"
  vm_ids = [
    module.vm["web01.example.net"].id,
    module.vm["web02.exmaple.net"].id
  ]
}
```
