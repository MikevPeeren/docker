# Swarm Mode

Swarm Mode is a clustering solution built inside Docker.  
Important to note it is not related to Swarm for pre-1.12 versions.  
Another fact is that it is not enabled by default.

# Active or not

In order to determine if Swarm is active or not run `docker info` and look for `Swarm:` if it says inactive it is not active.  
In order to activate swarm run the following command `docker swarm init`.