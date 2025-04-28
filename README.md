# AWS Technical Essentials

Create a VPC from CLI

```bash
aws ec2 create-vpc --instance-tenancy "default" --cidr-block "10.1.0.0/16" --tag-specifications '{"resourceType":"vpc","tags":[{"key":"Name","value":"app-vpc"}]}'

```

- [IP / CIDR Calculator](https://cidr.xyz/)
