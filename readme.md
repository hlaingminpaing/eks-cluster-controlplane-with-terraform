# How to implement EKS cluster control-plane with terraform

## Initialize the terraform

```sh
terraform init
terraform plan
terraform apply
```

## After created the cluster you can access this way

```sh
aws eks update-kubeconfig --name <your-cluster-name> --region <your-region>
kubectl get nodes
```