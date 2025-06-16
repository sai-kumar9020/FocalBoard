## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb"></a> [alb](#module\_alb) | ./modules/alb | n/a |
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./modules/ec2 | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_name"></a> [alb\_name](#input\_alb\_name) | The name of the ALB | `string` | `"demo-alb"` | no |
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI ID for the EC2 instance | `string` | `"ami-084568db4383264d4"` | no |
| <a name="input_availability_zone_a"></a> [availability\_zone\_a](#input\_availability\_zone\_a) | The availability zone for the first public subnet | `string` | `"us-east-1a"` | no |
| <a name="input_availability_zone_b"></a> [availability\_zone\_b](#input\_availability\_zone\_b) | The availability zone for the second public subnet | `string` | `"us-east-1b"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The instance type for the EC2 instance | `string` | `"t2.medium"` | no |
| <a name="input_public_subnet_a_cidr"></a> [public\_subnet\_a\_cidr](#input\_public\_subnet\_a\_cidr) | The CIDR block for the first public subnet | `string` | `"10.0.1.0/24"` | no |
| <a name="input_public_subnet_b_cidr"></a> [public\_subnet\_b\_cidr](#input\_public\_subnet\_b\_cidr) | The CIDR block for the second public subnet | `string` | `"10.0.2.0/24"` | no |
| <a name="input_region"></a> [region](#input\_region) | The AWS region to create resources in | `string` | `"us-east-1"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The CIDR block for the VPC | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_arn"></a> [alb\_arn](#output\_alb\_arn) | The ARN of the ALB |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | The ID of the EC2 instance |
| <a name="output_listener_arn"></a> [listener\_arn](#output\_listener\_arn) | The ARN of the listener |
| <a name="output_public_subnet_a_id"></a> [public\_subnet\_a\_id](#output\_public\_subnet\_a\_id) | The ID of the first public subnet |
| <a name="output_public_subnet_b_id"></a> [public\_subnet\_b\_id](#output\_public\_subnet\_b\_id) | The ID of the second public subnet |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | The ID of the security group |
| <a name="output_target_group_arn"></a> [target\_group\_arn](#output\_target\_group\_arn) | The ARN of the target group |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
