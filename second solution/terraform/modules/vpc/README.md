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
| [aws_internet_gateway.internet_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.public_route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.pub-sub-1-a_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub-sub-2-b_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.pri-sub-3-a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.pri-sub-4-b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.pub-sub-1-a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.pub-sub-2-b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_availability_zones.available_zones](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_PRI_SUB_3_A_CIDR"></a> [PRI\_SUB\_3\_A\_CIDR](#input\_PRI\_SUB\_3\_A\_CIDR) | n/a | `any` | n/a | yes |
| <a name="input_PRI_SUB_4_B_CIDR"></a> [PRI\_SUB\_4\_B\_CIDR](#input\_PRI\_SUB\_4\_B\_CIDR) | n/a | `any` | n/a | yes |
| <a name="input_PROJECT_NAME"></a> [PROJECT\_NAME](#input\_PROJECT\_NAME) | n/a | `any` | n/a | yes |
| <a name="input_PUB_SUB_1_A_CIDR"></a> [PUB\_SUB\_1\_A\_CIDR](#input\_PUB\_SUB\_1\_A\_CIDR) | n/a | `any` | n/a | yes |
| <a name="input_PUB_SUB_2_B_CIDR"></a> [PUB\_SUB\_2\_B\_CIDR](#input\_PUB\_SUB\_2\_B\_CIDR) | n/a | `any` | n/a | yes |
| <a name="input_REGION"></a> [REGION](#input\_REGION) | n/a | `any` | n/a | yes |
| <a name="input_VPC_CIDR"></a> [VPC\_CIDR](#input\_VPC\_CIDR) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_IGW_ID"></a> [IGW\_ID](#output\_IGW\_ID) | n/a |
| <a name="output_PRI_SUB_3_A_ID"></a> [PRI\_SUB\_3\_A\_ID](#output\_PRI\_SUB\_3\_A\_ID) | n/a |
| <a name="output_PRI_SUB_4_B_ID"></a> [PRI\_SUB\_4\_B\_ID](#output\_PRI\_SUB\_4\_B\_ID) | n/a |
| <a name="output_PROJECT_NAME"></a> [PROJECT\_NAME](#output\_PROJECT\_NAME) | n/a |
| <a name="output_PUB_SUB_1_A_ID"></a> [PUB\_SUB\_1\_A\_ID](#output\_PUB\_SUB\_1\_A\_ID) | n/a |
| <a name="output_PUB_SUB_2_B_ID"></a> [PUB\_SUB\_2\_B\_ID](#output\_PUB\_SUB\_2\_B\_ID) | n/a |
| <a name="output_REGION"></a> [REGION](#output\_REGION) | n/a |
| <a name="output_VPC_ID"></a> [VPC\_ID](#output\_VPC\_ID) | n/a |
<!-- END_TF_DOCS -->