# Project Name

**Udacity-Cloud-DevOps-Engineer-Capstone**

## Introduction

Welcome to my Udacity-Cloud-DevOps-Engineer-Capstone Project! This project showcases the implementation of a robust CI/CD pipeline for deploying a Python web application on AWS Kubernetes (EKS). The pipeline incorporates best practices for Docker containerization, linting, blue/green deployment, and Kubernetes cluster management. This README provides a quick overview of the project structure, setup, and deployment process.

## Project Overview

### Objective
1. **Pipeline Automation**: Designing and automating a comprehensive CI/CD pipeline using CircleCI .
2. **Docker Containerization**: Building and managing Docker containers for the Python web application.
3. **Infrastructure as Code (IaC)**: Utilizing CloudFormation to create and manage the AWS EKS cluster.
4. **Blue/Green Deployment**: Implementing a reliable blue/green deployment strategy for seamless updates.
5. **Testing and Verification**: Ensuring the reliability of the pipeline through linting, testing, and post-deployment verifications.

### Application Details

The Python web application used in this project is a simple "Hello World" application developed with Flask. The application serves as a demonstration of the CI/CD pipeline capabilities, with an initial deployment featuring a blue-themed background. The project further introduces a green-themed update, showcasing the ability to deploy changes without downtime.

### Key Features

1. **Automated Pipeline**: A fully automated CI/CD pipeline that encompasses linting, building Docker containers, and deploying to AWS EKS.
2. **Blue/Green Deployment**: Implementation of a blue/green deployment strategy for minimizing downtime during updates.
3. **Infrastructure Automation**: Use of CloudFormation to provision and manage the AWS EKS cluster.
4. **Scalability and Resilience**: Leveraging the benefits of Kubernetes for scalable and resilient application deployments.

## Project Structure
- **App**: [https://github.com/T128CL216/udacity-capstone/blob/main/app.py](./app.py)
- **Pipeline Configuration**: [https://github.com/T128CL216/udacity-capstone/blob/a60775898d3777531cffe490c58645b7f6d5997b/.circleci/config.yml](./config.yml)
- **Infrastructure as Code**: [https://github.com/T128CL216/udacity-capstone/tree/main/k8s](./k8s)

## Successful Deployment
![CircleCI](https://github.com/T128CL216/udacity-capstone/blob/0b988847ea2d98351c2f6f6f2c7b4ea452b1362f/screenshots/11-CIRCLECI_SUCCESS.png)

## Build Docker Container

- Code is linted as part of the Continuous Integration step
- Linting Error:
![Linting Error](https://github.com/T128CL216/udacity-capstone/blob/a60775898d3777531cffe490c58645b7f6d5997b/screenshots/05-LINT_ERROR.png)
- Linting Success:
![Linting Success](https://github.com/T128CL216/udacity-capstone/blob/a60775898d3777531cffe490c58645b7f6d5997b/screenshots/06-LINT_SUCCESS.png)
- Docker container is built and tested in the pipeline.
  
### Docker Image Repository

- Images are pushed to the ECR repository after a clean build
- First, an initial "Blue" Image was pushed to the ECR Repo after being built locally:
![BLUE_ECR](https://github.com/T128CL216/udacity-capstone/blob/0b988847ea2d98351c2f6f6f2c7b4ea452b1362f/screenshots/01-ECR_BLUE_IMAGE.png)
- Later, to demonstrate the Blue/Green deployment, a new "Green Image " was built in Circle CI pipeline and pushed to the same ECR repo wiht a new version:
![GREEN_ECR](https://github.com/T128CL216/udacity-capstone/blob/0b988847ea2d98351c2f6f6f2c7b4ea452b1362f/screenshots/07-ECR_GREEN_IMAGE.png)

### Initial Cluster Creation Image deployment
- After the blue image was created, a cluster was created using clouformation:
![K8S_Create](https://github.com/T128CL216/udacity-capstone/blob/0b988847ea2d98351c2f6f6f2c7b4ea452b1362f/screenshots/02-CF_K8s_CLUSTER.png)
- Then the "Blue Image" was deployed on the new cluster:
![Blue_deploy](https://github.com/T128CL216/udacity-capstone/blob/0b988847ea2d98351c2f6f6f2c7b4ea452b1362f/screenshots/03-INITIAL_IMAGE_DEPLOY.png)
- And the URL was tested to ensure the Blue UI was coming Up:
![Blue_url](https://github.com/T128CL216/udacity-capstone/blob/0b988847ea2d98351c2f6f6f2c7b4ea452b1362f/screenshots/04-BLUE_URL.png)

## Successful Deployment
- Blue/Green is successfully implemented by deploying the new "Green image" to new pods and new load balancer:
![Blue_url](https://github.com/T128CL216/udacity-capstone/blob/0b988847ea2d98351c2f6f6f2c7b4ea452b1362f/screenshots/08-GREEN_IMAGE_DEPLOY.png)
- The Ec2 instance refreshed:
![EC2_screenshot](https://github.com/T128CL216/udacity-capstone/blob/main/screenshots/13-EC2_instances.png)
- Then a smoke test is performed on the new GREEN URL by curling the /status endpoint of this new url:
![Smoke_test](https://github.com/T128CL216/udacity-capstone/blob/e598956da7dbf76f2de0e1d53c29162c501a55e8/screenshots/12-Smoke_Test.png)
- A patch is performed on the inital "blue" service URL to point to the new "green service" seemlessly.
- The blue service is being cleanuped to free some cluster ressources:
![cleanup](https://github.com/T128CL216/udacity-capstone/blob/9689ec92a6e55401c74d5f1edb645c75d429fd52/screenshots/10-GREEN_SERVICE_CLEAUP_2.png)
**Finally , we can access the green image via the same link we were initially accessing the Blue image!**
![green_url](https://github.com/T128CL216/udacity-capstone/blob/0b988847ea2d98351c2f6f6f2c7b4ea452b1362f/screenshots/09-GREEN_URL.png)
=======
