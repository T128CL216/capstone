#!/usr/bin/env bash
AWS_REGION="us-east-1"
AWS_ACCOUNT_ID="510590228660"
AWS_ECR_DNS=".dkr.ecr.us-east-1.amazonaws.com"
ECR_REPOSITORY_NAME="udacity/capstone"
latest_version =$(aws ecr describe-images \
    --region $AWS_REGION \
    --repository-name $ECR_REPOSITORY_NAME \
    --query 'imageDetails|sort_by(@, &imagePushedAt)|[-1].imageTags[0]' \
    --output text)

echo $latest_version
# docker build --tag=$AWS_ACCOUNT_ID$AWS_ECR_DNS/$ECR_REPOSITORY_NAME:1.0.0 .

# docker images

# docker run -it --log-driver json-file --log-opt mode=non-blocking -p 8080:8080 $AWS_ACCOUNT_ID$AWS_ECR_DNS/$ECR_REPOSITORY_NAME:1.0.0

# docker push $AWS_ACCOUNT_ID$AWS_ECR_DNS/$ECR_REPOSITORY_NAME:1.0.0