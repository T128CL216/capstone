hello, 

ON BRANCH feature-create_k8s

I am currently have an issue with the Kubectl command on my cloud 9 env but also locally on my own terminal. 

I am using my admin credentials for aws CLI. I have built my EKS cluster using cloudformation from cloud 9 , files can be found under: https://github.com/T128CL216/udacity-capstone/tree/main/.circleci/cloudformation

CLuster is up but I need to investigate why my docker image has not been pushed properly. I was trying to use kubectl to do that but I keep getting this error:

![alt text](https://github.com/T128CL216/udacity-capstone/blob/feature-create_k8s/screenshots/Screen%20Shot%202023-11-18%20at%202.24.33%20PM.png)

These are the policies I have added to my admin user :
![alt text](https://github.com/T128CL216/udacity-capstone/blob/59aaba8d7273739c8496e412a84323f503bd2aef/screenshots/Screen%20Shot%202023-11-18%20at%201.50.16%20PM.png)

+ these are the outputs of the commands that I saw online or in other udacity issues:
  ![alt text](https://github.com/T128CL216/udacity-capstone/blob/feature-create_k8s/screenshots/Screen%20Shot%202023-11-18%20at%202.24.13%20PM.png)
----------------------------------------------------------
  ![alt text](https://github.com/T128CL216/udacity-capstone/blob/feature-create_k8s/screenshots/Screen%20Shot%202023-11-18%20at%202.25.19%20PM.png)
  ----------------------------------------------------------
  ![alt text](https://github.com/T128CL216/udacity-capstone/blob/feature-create_k8s/screenshots/Screen%20Shot%202023-11-18%20at%202.25.39%20PM.png)
  ----------------------------------------------------------
I have already checked the open questions like this ones:

- https://knowledge.udacity.com/questions/983362
- https://knowledge.udacity.com/questions/925361
