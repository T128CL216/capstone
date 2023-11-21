#!/bin/bash

STACK_NAME=$1
TEMPLATE_BODY=$2
PARAMETERS_FILE=$3

aws cloudformation create-stack \
    --stack-name $STACK_NAME \
    --template-body file://$TEMPLATE_BODY \
    --parameters file://$PARAMETERS_FILE \
    --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
    --region us-east-1