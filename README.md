# Terraform ECS Cluster

This repository contains `Terrorform` configuration files that provide for standing up an AWS Elastic Container Service Cluster, meant for deploying a docker image. 

## Use 
Change/Update the credentials.tf file with AWS IAM Credentials,ie,Access and Secret Key

## Use 
Configure a new IAM.

```
terraform plan -target=module.iam
terraform apply -target=module.iam
```

Configure a new VPC.

```
terraform plan -target=module.vpc
terraform apply -target=module.vpc
```

Configure the auto scaling group and launch configuration via EC2.

```
terraform plan -target=module.ec2
terraform apply -target=module.ec2
```


Configure a new ECS Cluster with a service.

```
terraform plan -target=module.ecs
terraform apply -target=module.ecs
```


Destroy all moduless.

```
terraform destroy -target=module.ecs
terraform destroy -target=module.ec2
terraform destroy -target=module.vpc
terraform destroy -target=module.iam
```