fmt:
	cd ./terraform && terraform fmt

docs:
	terraform-docs --config ./terraform/.terraform-docs.yaml ./terraform

plan:
	cd ./terraform && terraform plan

apply:
	cd ./terraform && terraform apply

refresh:
	cd ./terraform && terraform apply -refresh-only
