# Images

An Image is the App binaries and Dependencies and metadata about the image data and how to run the image.  
It is not a complete OS, there is no kernel or kernel modules (e.g. drivers).  
It can be as small as one file namely the app binary like for example a golang static binary.  
But it can also be As Big as a Ubuntu distro with apt, Apache, PHP and more installed.

# Docker Hub

This is the apt package system for container.  
Images with the official keyword are from trusted sources and do not have a forward slash (/)  
There are also images that are named NAME/IMAGE the name is the person/company that has uploaded their own image.

# Image Commands

## Get all the Images that have been pulled

```
docker image ls
```

## Pull a new image with tag(:stable)

```
docker pull nginx:stable
```

## Get all the image layers for a specific Image

```
docker history nginx
```

## Display all the default information about a Image

```
docker inspect nginx
```

## Creating a tag of an image

```
docker image tag nginx mikevpeeren/nginx
```

```
docker image tag mikevpeeren/nginx mikevpeeren/nginx:testing
```

## Pushing a tagged image

```
docker image push mikevpeeren/nginx
```

```
docker image push mikevpeeren/nginx:testing
```