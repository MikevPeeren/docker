# Docker Hub

Docker Hub ius the most popular public image registry, it really is is Docker Registry including lightweight image building.  
You can link GitHub/BitBucket to the Hub in order to auto build images on commits and it has features for chaining image building.

# Docker Registry

Docker Registry can be stored privately on your network. It is part of the docker/distribution GitHub repository.  
It is the de factor in private container registries.  
It is however not as full featured as Docker Hub or others, there is no web UI and it only has basic auth.  
Storage supports local but also external storages as S3/Azure/Alibaba/Google/ Cloud and OpenStack Swift.

# Commands

## Run registry locally

```
docker container run -d -p 5000:5000 --name registry registry
```

## Push image to local registry

```
docker pull hello-world
docker tag hello-world 127.0.0.1:5000/hello-world
docker push 127.0.0.1:5000/hello-world
```

## Run image from local registry

```
docker image remove 127.0.0.1:5000/hello-world
docker image pull 127.0.0.1:5000/hello-world
```

## Run local registry with volume

```
docker container run -d -p 5000:5000 --name registry -v $(pwd)/registry-data:/var/lib/registry registry
```