fmt:
	cd ./terraform && terraform fmt

tfdocs:
	terraform-docs --config ./terraform/.terraform-docs.yaml ./terraform