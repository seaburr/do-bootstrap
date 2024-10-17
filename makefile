fmt:
	cd ./terraform && terraform fmt

tfdocs:
	terraform-docs --config ./terraform/.terraform-docs.yaml ./terraform

tfplan:
	cd ./terraform && terraform plan

tfapply:
	cd ./terraform && terraform apply
