# Project Name

**[Your Project Name]**

## Introduction

Welcome to [Your Project Name]! This project showcases the implementation of a robust CI/CD pipeline for deploying a Python web application on AWS Kubernetes (EKS). The pipeline incorporates best practices for Docker containerization, linting, blue/green deployment, and Kubernetes cluster management. This README provides a quick overview of the project structure, setup, and deployment process.

## Project Overview

Briefly describe your project and its purpose. Highlight the key technologies used.

## Project Structure

- **App**: [Link to your app code]
- **Pipeline Configuration**: [Link to your CircleCI configuration]
- **Infrastructure as Code**: [Link to your CloudFormation or Ansible code for Kubernetes deployment]

## Set Up Pipeline

### GitHub Repository

- All project code is stored in the GitHub repository: [Link to GitHub Repository]

### Docker Image Repository

- Docker images are stored in a centralized repository.
- Images are pushed to the repository after a clean build.

## Build Docker Container

- Code is linted as part of the Continuous Integration step.
  - ![Linting Success](link-to-lint-success-screenshot.png)
  - ![Linting Error](link-to-lint-error-screenshot.png)
- Docker container is built and tested in the pipeline.

## Successful Deployment

### Kubernetes Cluster

- AWS EKS Cluster is created using Ansible/CloudFormation.
  - ![EKS Cluster Creation](link-to-eks-cluster-screenshot.png)
- Blue/Green or Rolling Deployment is successfully implemented.
  - ![CircleCI Pipeline](link-to-circleci-pipeline-screenshot.png)
  - ![AWS EC2 Instances](link-to-ec2-instances-screenshot.png)
  - ![Kubectl Deployment Output](link-to-kubectl-output-screenshot.png)
  - ![Application Access](link-to-application-access-screenshot.png)



## Project Rubric

Refer to the [Project Rubric](link-to-rubric.md) for detailed criteria.

---
