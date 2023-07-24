<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.EIP-NAT-GW-A](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.EIP-NAT-GW-B](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_nat_gateway.NAT-GW-A](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.NAT-GW-B](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.Pri-RT-A](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.Pri-RT-B](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.pri-sub-3-a-with-Pri-RT-A](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pri-sub-5-a-with-Pri-RT-B](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_IGW_ID"></a> [IGW\_ID](#input\_IGW\_ID) | n/a | `any` | n/a | yes |
| <a name="input_PRI_SUB_3_A_ID"></a> [PRI\_SUB\_3\_A\_ID](#input\_PRI\_SUB\_3\_A\_ID) | n/a | `any` | n/a | yes |
| <a name="input_PRI_SUB_4_B_ID"></a> [PRI\_SUB\_4\_B\_ID](#input\_PRI\_SUB\_4\_B\_ID) | n/a | `any` | n/a | yes |
| <a name="input_PUB_SUB_1_A_ID"></a> [PUB\_SUB\_1\_A\_ID](#input\_PUB\_SUB\_1\_A\_ID) | n/a | `any` | n/a | yes |
| <a name="input_PUB_SUB_2_B_ID"></a> [PUB\_SUB\_2\_B\_ID](#input\_PUB\_SUB\_2\_B\_ID) | n/a | `any` | n/a | yes |
| <a name="input_VPC_ID"></a> [VPC\_ID](#input\_VPC\_ID) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->