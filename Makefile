# Terraform Makefile

.PHONY: apply plan destroy fmt validate

# Plan Terraform changes
init:
	terraform init

# Plan Terraform changes
plan:
	terraform plan

# Apply Terraform configuration
apply:
	terraform apply

# Destroy Terraform managed infrastructure
destroy:
	terraform destroy

# Format Terraform files
fmt:
	terraform fmt

# Validate Terraform configuration
validate:
	terraform validate