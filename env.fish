#! /usr/local/bin/fish

function invoke
    if not set -q argv[1]
        set argv[1] ""
    end

    aws lambda invoke \
    --function-name $TF_VAR_lambda_name \
    --payload $argv[1] \
    response.txt

    cat response.txt
end

set AWS_ACCOUNT_ID (aws sts get-caller-identity --output text --query "Account")

set SERVICE_NAME "terraform-serverless"

set NAME_PREFIX "$AWS_ACCOUNT_ID-$SERVICE_NAME"

export TF_VAR_lambda_zip="lambda.zip"
export TF_VAR_lambda_handler="lambda.handler"
export TF_VAR_lambda_name="$NAME_PREFIX-lambda"

export TF_VAR_gateway_name="$NAME_PREFIX-gateway"
