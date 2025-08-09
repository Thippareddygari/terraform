dev-apply:
	git pull
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars -var vault_token=${vault_token}

dev-destroy:
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=env-dev/state.tfvars 
	terraform destroy -auto-approve -var-file=env-dev/main.tfvars 

prod-apply:
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=env-dev/state.tfvars 
	terraform apply -auto-approve -var-file=env-dev/main.tfvars -var vault_token=${vault_token}

prod-destroy:
	rm -f .terraform/terraform.tfstate  -var vault_token=${vault_token}
	terraform init -backend-config=env-dev/state.tfvars
	terraform destroy -auto-approve -var-file=env-dev/main.tfvars  
