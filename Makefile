out/${TF_VAR_lambda_zip}: src/*
	mkdir -p out; pushd src; zip -r ../out/${TF_VAR_lambda_zip} ./; popd

deploy: out/${TF_VAR_lambda_zip}
	terraform apply --auto-approve
