variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "uat-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.32"  # Optional default value
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to apply to all resources"
  type        = map(string)
  default = {
    environment = "UAT"
    project     = "MyEKS"
    owner       = "Hello-World"
  }
}