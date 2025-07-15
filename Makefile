TF_DIR ?= $(dir)

init:
	terraform -chdir=$(TF_DIR) init

plan:
	terraform -chdir=$(TF_DIR) plan -var-file=terraform.tfvars

apply:
	terraform -chdir=$(TF_DIR) apply -var-file=terraform.tfvars -auto-approve

destroy:
	terraform -chdir=$(TF_DIR) destroy -var-file=terraform.tfvars -auto-approve

validate:
	terraform -chdir=$(TF_DIR) validate 