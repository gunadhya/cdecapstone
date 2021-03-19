
# Capstone

### Document -> [PDF](Capstone.pdf)
---

# Cluster creation and initilaization
I used eksctl(v.0.40) tool for creating a cluster in elastic kubernetes service.

Initial run: 

```shell 
    eksctl create cluster mycluster
```
Using a config yaml:

```shell 
    eksctl create cluster -f ./kube/cluster.yaml
```

Also configured an IAM role for the kubernetes cluster
```shell
    eksctl get iamidentitymapping --cluster mycluster
    eksctl create iamidentitymapping --cluster  mycluster --arn 
    arn:aws:iam::<AccountID>:role/pipeline --group system:masters --username devopsuser
```

# Screenshots
### Deployment appv1
![image](Screenshots/appv1running.png)
### Deployment appv2 using rolling update
![image](Screenshots/appv2running.png)
### Pipeline
![image](Screenshots/success.png)


### Active EKS cluster 
![image](Screenshots/eks.png)
![image](Screenshots/eks2.png)

### EC2 dashboard 
![image](Screenshots/ec2.png)

### lint error 1
![image](Screenshots/lint1.png)
### lint error 2 
![image](Screenshots/lin2.png)

### Cloud formation stack
![image](Screenshots/cloudformation.png)

### Docker build and push 
![image](Screenshots/buildandpushimage.png)

### Successfull deployment
![image](Screenshots/suc2.png)

### Successfull rolling update 
![image](Screenshots/suc3.png)







