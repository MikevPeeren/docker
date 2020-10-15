# Swarm Mode

Swarm Mode is a clustering solution built inside Docker.  
Important to note it is not related to Swarm for pre-1.12 versions.  
Another fact is that it is not enabled by default.

# Active or not

In order to determine if Swarm is active or not run `docker info` and look for `Swarm:` if it says inactive it is not active.  
In order to activate swarm run the following command `docker swarm init`.

# Swarm init
The init is extremely fast and what it has done is the following:

- Lots of PKI and security automation
    - Root Signing Certificate created for our swarm
    - Certificate is issued for first Manager node
    - Join tokens are created
- Raft database created to store root CA, configs and secrets
    - Encrypted by default on disk
    - No need for another key/value system to hold orchestration/secrets
    - Replicates logs amongst Managers via mutual TLS in 'control plane'

# Routing Mesh

Routing Mesh is een incoming ingress Route network. It covers all the nodes in a Swarm and it uses IPVS from the Linux Kernel. And what it does is it load balances all the Swarm Services across their tasks.  

This works in two ways:

- Container-to-container in a Overlay network (uses VIP).  
This gets put infront of all the services and makes it so that all tasks are spread correctly.
- External traffic that comes in to the published ports goes to all the nodes that are listening. And reroutes it to the correct location.

# Routing Mesh Container

This is a stateless Load Balancer, and is a OSI Layer 3 (TCP) Load Balancer and thus not a Layer 4 (DNS) Load Balancer. This means you have to do additional steps in order to fix these limitations. It can be overcome with Nginx, HAProxy, LB Proxy or Docker Enterprise Edition which comes with built in L4 web proxy.


# Commands

## Get all the services

```
docker service ls
```

## List all the tasks of a service

```
docker service ps ID
```

## Update the service and change the replica amount.
```
docker service update ID --replicas 666
```

## Remove service

```
docker service rm NAME_OF_SERVICE
```