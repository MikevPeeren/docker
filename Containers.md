# Containers

Most people compare a Container to a sort of Mini-VM.  
But in actuality they are more like a process.  
They are limited to what resources they can access and they exit when the process has finished.  

# Container Lifetime & Persistent Data

Containers are usually immutable(unchanging) and ephemeral(disposable).  
There is this thing called immutable infrastructure where we only re-deploy containers that never change.  
This is the ideal scenario, but what about databases for example or unique data ?  
Docker has given us feature for these kind of problems to ensure these seperation of concerns.  
This problem of unique data is known in the industry as Persistent Data, docker has two solutions for this problem, namely Volumes and Bind Mounts.
  
<b>Volumes:</b> Configuration option to make a special location outside of container file system.
  
<b>Bind Mounts:</b> Link container path to host path.

# Container Commands

## Get all the Containers that are currently running

```
docker container ls
```

## Get all the Containers ignoring running status
```
docker container ls a
```

## Run a Ubuntu Docker Container with the name 'ubuntu' that is detached(-d)

```
docker container run -d --name ubuntu ubuntu
```

## Run a Container with an Centos image that gets removed automatically when it is done (--rm) with the name centos that executes a curl to google

```
docker container run --rm --name centos centos curl google.com
```

# Network Commands

Network commands are listed on this page as they are connected with Containers, and if you wish to connect certain containers this knowledge is helpful.

## Display all Networks

```
docker network ls
```

## Create a Network

```
docker network create new_network
```

## Connect a Container to a Network
```
 docker container run --rm --net new_network centos curl google.com
```