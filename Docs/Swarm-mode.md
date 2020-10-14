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
