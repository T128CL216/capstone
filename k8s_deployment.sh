kubectl create deployment blue-deploy --image=510590228660.dkr.ecr.us-east-1.amazonaws.com/udacity/capstone:1.0.3 --replicas 1 &&
    kubectl expose deployment/blue-deploy --type="LoadBalancer" --port 8080
    
kubectl create deployment main-service --image=510590228660.dkr.ecr.us-east-1.amazonaws.com/udacity/capstone:1.0.3 --replicas 1 &&
    kubectl expose deployment/main-service --type="LoadBalancer" --port 8080