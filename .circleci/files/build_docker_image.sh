#!/bin/bash
#Build Docker Tag dynamically based on previous tag version
AWS_REGION="us-east-1"
AWS_ACCOUNT_ID="510590228660"
AWS_ECR_DNS=".dkr.ecr.us-east-1.amazonaws.com"
ECR_REPOSITORY_NAME="udacity/capstone"
latest_version=$(aws ecr describe-images \
    --region $AWS_REGION \
    --repository-name $ECR_REPOSITORY_NAME \
    --query 'imageDetails|sort_by(@, &imagePushedAt)|[-1].imageTags[0]' \
    --output text)
if [ -z "$latest_version" ]; then
    latest_version="0.0.0"
fi
IFS='.' read -r -a version_segments <<< "$latest_version"
last_segment=$((version_segments[2] + 1))
new_version="${version_segments[0]}.${version_segments[1]}.$last_segment"
echo "Latest Docker image Version: $latest_version"
echo "New Docker image version: $new_version"

# Build Docker Image
docker build --tag=$AWS_ACCOUNT_ID$AWS_ECR_DNS/$ECR_REPOSITORY_NAME:$new_version .

# List docker images
#docker images

# Run Docker image
# docker run -it --log-driver json-file --log-opt mode=non-blocking -p 8080:8080 $AWS_ACCOUNT_ID$AWS_ECR_DNS/$ECR_REPOSITORY_NAME:$new_version

# Push docker image to AWS ECR
docker push $AWS_ACCOUNT_ID$AWS_ECR_DNS/$ECR_REPOSITORY_NAME:$new_version
echo "$AWS_ACCOUNT_ID$AWS_ECR_DNS/$ECR_REPOSITORY_NAME:$new_version successfully pushed to AWS"