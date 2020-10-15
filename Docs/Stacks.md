# Stacks

Stacks are another layer of abstraction to Swarm that are called Stacks. Basically these are Compose files for Production Swarm.  
Stacks accept Compose files as their declarative definition for services, networks and volumes.  
To use Stacks we can use the command `docker stack deploy` rather than `docker service create`.  
And Stacks manages all the objects for us including overlay network per stack.

# Commands

## Deploy a Stack

```
docker stack deploy -c stack.yml voteapp
```

## Display the services in Stack

```
docker stack services voteapp
```