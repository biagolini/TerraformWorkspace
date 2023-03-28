# Terraform Workspaces Example

This is a simple example of how to use Terraform workspaces to manage multiple environments. This example creates an AWS EC2 instance in each workspace.

## Getting Started

1 - Clone this repository:

```
# SSH
git clone git@github.com:biagolini/TerraformWorkspace.git
# HTTPS
git clone https://github.com/biagolini/TerraformWorkspace.git
```

2 - Navigate to the project directory:

```
cd terraform-workspaces-example
```

3 - Create a new workspace for the dev environment:

```
terraform workspace new dev
```

4 - Switch to the dev workspace:

```
terraform workspace select dev
```

5 - Initialize the project:

```
terraform init
```

6 - Apply the changes to create the dev environment:

```
terraform apply
```

7 - Destroy the resources created by Terraform:

```
terraform destroy
```

8 - Create a new workspace for the prod environment:

```
terraform workspace new prod
```

9 - Switch to the prod workspace:

```
terraform workspace select prod
```

10 - Apply the changes to create the prod environment:

```
terraform apply
```

11 - Destroy the resources created by Terraform:

```
terraform destroy
```

## Configuration

The variables.tf file contains the variables used to create the EC2 instances. You can modify these variables to customize the instances to your needs.
Workspaces

The terraform.tf file contains the backend configuration that stores the Terraform state. In this example, the state is stored in an S3 bucket and the key includes the name of the workspace.

The main.tf file uses the terraform.workspace variable to create a unique name for the EC2 instance based on the workspace.
