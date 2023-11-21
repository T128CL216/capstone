<<<<<<< HEAD
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
