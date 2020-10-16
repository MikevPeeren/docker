# Kubernetes

Kubernetes is a popular container orchestrator and it has been released in 2015 by Google. Kubernetes runs on top of Docker (usually) as a set of APIs on containers it then provides API/CLI to manage containers across servers. Many clouds provide kubernetes for you but there are also vendors that make a 'distribution' of it.

# Comparison with Swarm

## Advantages of Swarm

-   Comes with Docker,single vendor container platform
-   Easiest orchestrator to deploy/manage yourself
-   Follows 80/20 rules, 20% of feature for 80% of use cases (seems to be the feel)
-   Runs anywhere Docker does:
    -   local, cloud, datacenter
    -   ARM, Windows, 32-bit
-   Secure by default
-   Easier to troubleshoot

## Advantanges of Kubernetes

-   Clouds will deploy/manager Kubernetes for you
-   Infrastructure vendors are making their own distributions
-   Widest adoption and community
-   Flexible: Covers widest set of use cases
-   "Kubernetes first" vendor support
-   "No one ever got fired for buying IBM"
    -   Picking solutions isn't 100% rational
    -   Trendy, will benefit your career
    -   CIO/CTO Checkbox

# Basic Terms: System Parts

-   Kubernetes: The whole orchestration system
    -   K8s 'k-eights' or Kube for short
-   Kubectl: CLI to configure Kubernetes and manage apps
    -   Using "cube control" official pronunciation
-   Node: Single server in the Kubernetes Cluster
-   Kubelet: Kubernetes agent running on Nodes
-   Control Plane: Set of containers that manage the cluster
    -   Includes API server, scheduler, controlelr manager, etcd, and more
    -   Sometimes called the "master"

# Other Terms:

-   Pod: One or more containers running together on one Node
    -   Basic unit of deployment. Containers are always in Pods.
-   Controller: For creating/updating pods and other objects
    -   Many types of Controllers including Deployment, ReplicaSet, StatefulSet, DaemonSet, Job, CronJob, etc.
-   Service: Network endpoint to connect to a Pod
-   Namespace: Filtered group of object in cluster

# Imperative versus Declarative

Imperative: Focus on HOW a program operates
Declarative: Focus on WHAT a program should accomplish

Example: I would like a cup of coffee
Imperative: I boil water, scoop out 42 grams of medium fine grounds, poor over 700 grams of water, etc.
Declarative: Barista, I would like a cup of coffee

## Kubernetes Imperative:

-   Examples: kubectl run, kubectl create deployment, kubectl update
    -   We start with a state we know (no deployment exists)
    -   We ask kubectl run to create a deployment
-   Different commands are require to change that deployment
-   Different commands are required per object
-   Imperative is easier when you know the state
-   Imperative is easier to get started
-   Imperative is easier for humans at the CLI
-   Imperative is NOT easy to automate

## Kubernetes Declarative:

-   Examples: kubectl apply -f my-resource.yaml
    -   We don't know the current state
    -   We only know what we want the end result to be (yaml contents)
-   Same command each time (tiny exception for delete)
-   Resources can be all in a file, or many files (apply a whole dir)
-   Requires understanding the YAML keys and values
-   More work than kubectl run for just starting a pob
-   The easiest way to automate
-   The eventual path to GitOps happiness

# Imperative Commands

## Determine if Kube control is running

```
kubectl version
```

## Deploy a Pod

```
kubectl run my-nginx --image nginx
```

## Get Pods

```
kubectl get pods
```

## Get all Objects

```
kubectl get all
```

## Create a Deployment

```
kubectl create deployment nginx --image nginx
```

## Delete a Deployment

```
kubectl delete deployments nginx
```

## Scale up a Deployment

```
kubectl scale deploy/my-apache --replicas 2
kubectl scale deployment my-apache --replicas 2
```

## Get Container logs

```
kubectl logs deployment/my-apache
kubectl logs deployment/my-apache --follow --tail 1
```

## Get a bunch of details about an object, including events

```
kubectl logs -l name=myLabel
kubectl describe pod/my-apache-65fd7bd7db-7q22f
```

## Display pods while watching

```
kubectl get pods -w (different window)
kubectl delete pods my-apache-65fd7bd7db-7q22f
kubectl get pods
```

## Exposing a port

```
kubectl expose deployment/httpenv --port 8888
```

## Exposing a port with NodePort so you can call the port with localhost

```
kubectl expose deployment/httpenv --port 8888 --name httpenv-np --type NodePort
kubectl get service
curl localhost:theaboveIPafterthe:
```

## Expose through Docker Desktop

```
kubectl expose deployment/httpenv --port 8888 --name httpenv-np --type LoadBalancer
curl localhost:8888
```

## Deleting a Service & Deployment

```
kubectl delete service/httpenv-lb deployment/httpenv
```

# Declarative Commands

## Get all the api resources available

```
kubectl api-resources
```

## Get all the keys/values for the services

```
kubectl explain services --recursive
```

## Get all sub keys & description of the spec.

```
kubectl explain services.spec
```

## Get the information about the type key

```
kubectl explain services.spec.type
```
