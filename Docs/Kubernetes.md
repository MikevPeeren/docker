# Kubernetes

Kubernetes is a popular container orchestrator and it has been released in 2015 by Google. Kubernetes runs on top of Docker (usually) as a set of APIs on containers it then provides API/CLI to manage containers across servers. Many clouds provide kubernetes for you but there are also vendors that make a 'distribution' of it.

# Comparison with Swarm

## Advantages of Swarm

- Comes with Docker,single vendor container platform
- Easiest orchestrator to deploy/manage yourself
- Follows 80/20 rules, 20% of feature for 80% of use cases (seems to be the feel)
- Runs anywhere Docker does:
    - local, cloud, datacenter
    - ARM, Windows, 32-bit
- Secure by default
- Easier to troubleshoot

## Advantanges of Kubernetes

- Clouds will deploy/manager Kubernetes for you
- Infrastructure vendors are making their own distributions
- Widest adoption and community
- Flexible: Covers widest set of use cases
- "Kubernetes first" vendor support
- "No one ever got fired for buying IBM"
    - Picking solutions isn't 100% rational
    - Trendy, will benefit your career
    - CIO/CTO Checkbox

# Basic Terms: System Parts

- Kubernetes: The whole orchestration system
  - K8s 'k-eights' or Kube for short
- Kubectl: CLI to configure Kubernetes and manage apps
  - Using "cube control" official pronunciation
- Node: Single server in the Kubernetes Cluster
- Kubelet: Kubernetes agent running on Nodes
- Control Plane: Set of containers that manage the cluster
  - Includes API server, scheduler, controlelr manager, etcd, and more
  - Sometimes called the "master"

# Other Terms:

- Pod: One or more containers running together on one Node
  - Basic unit of deployment. Containers are always in Pods.
- Controller: For creating/updating pods and other objects
  - Many types of Controllers including Deployment, ReplicaSet, StatefulSet, DaemonSet, Job, CronJob, etc.
- Service: Network endpoint to connect to a Pod
- Namespace: Filtered group of object in cluster