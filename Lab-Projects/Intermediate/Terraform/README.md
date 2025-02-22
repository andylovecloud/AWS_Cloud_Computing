# Goal
Go throuht https://developer.hashicorp.com/terraform/tutorials/aws-get-started and learn needed skills to create AWS infrastructure with Terraform.

# Assignment goals
1) You need to to create 1-3 EC2 machines with compatible AWS region (hint you will need to check your AWS Learner lab information) 
2) User data update from previous assignment 
3) Return your own Terraform code and output file from terraform

## Materials
- [Terraform AWS provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [User_data](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)
- [Terraform userdata hint](./Terraform_hint_user_data.md)
- [Terraform variables.tf how to](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables)
- [Terraform outputs.tf how to](https://developer.hashicorp.com/terraform/tutorials/configuration-language/outputs)

# Environments
For the exercise, you need an internet connection, AWS learner lab, and an Ubuntu WSL machine.

Every practice always starts:
1) AWS learner lab with startup 
2) By installing or checking login credentials to AWS Labs 
3) Change ip address of your own AWS EC2 server to hosts.ini file

# Expectation files to return -> in "Return-files" folder
1) Main.tf
2) Output.tf
3) variables.tf
4) Output.txt (from terraform output > output.txt)
You need to get information to identify and connect to computer you have created. Remember labs are finicky so you need good information on them.
5) Screenshot of your AWS EC2 machine created by scripts
