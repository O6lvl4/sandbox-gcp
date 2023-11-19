# Terraform Makefile

.PHONY: init apply plan destroy fmt validate outdated-modules update-modules

# Initialize Terraform
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

# Refresh module status
outdated-modules:
	terraform get -update

# Update modules and apply
update-modules:
	terraform get -update
	terraform apply
