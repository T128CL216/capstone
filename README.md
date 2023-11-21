# Project Name

**Udacity-Cloud-DevOps-Engineer-Capstone**

## Introduction

Welcome to my Udacity-Cloud-DevOps-Engineer-Capstone Project! This project showcases the implementation of a robust CI/CD pipeline for deploying a Python web application on AWS Kubernetes (EKS). The pipeline incorporates best practices for Docker containerization, linting, blue/green deployment, and Kubernetes cluster management. This README provides a quick overview of the project structure, setup, and deployment process.

## Project Overview

### Objective
1. **Pipeline Automation**: Designing and automating a comprehensive CI/CD pipeline using CircleCI .
2. **Docker Containerization**: Building and managing Docker containers for the Python web application.
3. **Infrastructure as Code (IaC)**: Utilizing Ansible or CloudFormation to create and manage the AWS EKS cluster.
4. **Blue/Green Deployment**: Implementing a reliable blue/green deployment strategy for seamless updates.
5. **Testing and Verification**: Ensuring the reliability of the pipeline through linting, testing, and post-deployment verifications.

### Application Details

The Python web application used in this project is a simple "Hello World" application developed with Flask. The application serves as a demonstration of the CI/CD pipeline capabilities, with an initial deployment featuring a blue-themed background. The project further introduces a green-themed update, showcasing the ability to deploy changes without downtime.

### Key Features

1. **Automated Pipeline**: A fully automated CI/CD pipeline that encompasses linting, building Docker containers, and deploying to AWS EKS.
2. **Blue/Green Deployment**: Implementation of a blue/green deployment strategy for minimizing downtime during updates.
3. **Infrastructure Automation**: Use of Ansible or CloudFormation to provision and manage the AWS EKS cluster.
4. **Scalability and Resilience**: Leveraging the benefits of Kubernetes for scalable and resilient application deployments.

## Project Structure
- [![App](https://github.com/T128CL216/udacity-capstone/blob/main/app.py)](app.py)
- [![Pipeline Configuration](https://github.com/T128CL216/udacity-capstone/blob/a60775898d3777531cffe490c58645b7f6d5997b/.circleci/config.yml)](CircleCI)
- [![Infrastructure as Code](https://github.com/T128CL216/udacity-capstone/tree/main/k8s)](K8s)


## Set Up Pipeline

### Docker Image Repository

- Docker images are stored in a centralized repository.
- Images are pushed to the repository after a clean build
- First, an initial "Blue" Image was pushed to the ECR Repo
- Then, to demonstrate the Blue/Green deployment, a new "Green Image " was built in Circle CI pipeline and pushed to the same ECR repo wiht a new version
## Build Docker Container

- Code is linted as part of the Continuous Integration step.
  - ![Linting Success](https://github.com/T128CL216/udacity-capstone/blob/a60775898d3777531cffe490c58645b7f6d5997b/screenshots/06-LINT_SUCCESS.png)
  - ![Linting Error](https://github.com/T128CL216/udacity-capstone/blob/a60775898d3777531cffe490c58645b7f6d5997b/screenshots/05-LINT_ERROR.png)
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
=======
hello, 

ON BRANCH feature-create_k8s

I am currently have an issue with the Kubectl command on my cloud 9 env but also locally on my own terminal. 

I am using my admin credentials for aws CLI. I have built my EKS cluster using cloudformation from cloud 9 , files can be found under: https://github.com/T128CL216/udacity-capstone/tree/main/.circleci/cloudformation
>>>>>>> 9879c0fd045b4d3f3738f60cfa4265e355fcae68

CLuster is up but I need to investigate why my docker image has not been pushed properly. I was trying to use kubectl to do that but I keep getting this error:

![alt text](https://github.com/T128CL216/udacity-capstone/blob/feature-create_k8s/screenshots/Screen%20Shot%202023-11-18%20at%202.24.33%20PM.png)

<<<<<<< HEAD
## Project Rubric

Refer to the [Project Rubric](link-to-rubric.md) for detailed criteria.

---
=======
These are the policies I have added to my admin user :
![alt text](https://github.com/T128CL216/udacity-capstone/blob/59aaba8d7273739c8496e412a84323f503bd2aef/screenshots/Screen%20Shot%202023-11-18%20at%201.50.16%20PM.png)

+ these are the outputs of the commands that I saw online or in other udacity issues:
  ![alt text](https://github.com/T128CL216/udacity-capstone/blob/feature-create_k8s/screenshots/Screen%20Shot%202023-11-18%20at%202.24.13%20PM.png)
----------------------------------------------------------
  ![alt text](https://github.com/T128CL216/udacity-capstone/blob/feature-create_k8s/screenshots/Screen%20Shot%202023-11-18%20at%202.25.19%20PM.png)
  ----------------------------------------------------------
  ![alt text](https://github.com/T128CL216/udacity-capstone/blob/feature-create_k8s/screenshots/Screen%20Shot%202023-11-18%20at%202.25.39%20PM.png)
  ----------------------------------------------------------
  ![alt text](https://github.com/T128CL216/udacity-capstone/blob/feature-create_k8s/screenshots/Screen%20Shot%202023-11-18%20at%202.31.29%20PM.png)
  ----------------------------------------------------------
  ![alt text](https://github.com/T128CL216/udacity-capstone/blob/feature-create_k8s/screenshots/Screen%20Shot%202023-11-18%20at%202.32.45%20PM.png)
  ----------------------------------------------------------
I have already checked the open questions like this ones:

- https://knowledge.udacity.com/questions/983362
- https://knowledge.udacity.com/questions/925361
>>>>>>> 9879c0fd045b4d3f3738f60cfa4265e355fcae68
