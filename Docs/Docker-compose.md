# Docker Compose

Docker Compose has been made in order to easily configure relationships between containers through an easy to read file with all our container settings inside.

It is comprised of 2 seperate but related things namely:

- Yaml formatted file that describes our solution options for:
    - containers
    - networks
    - volumes
- A CLI tool `docker-compose` used for local dev/test automation with the YAML files

# Docker Compose YAML file

The format has its own versions for example; 1, 2, 2.1, 3, 3.1.  
As previously mentioned the YAML file can be used with the `docker-compose` command for local docker automation or with `docker` directly in production with Swarm.  
The default file name is docker-compose.yml but any file can be used with the command `docker-compose -f`

# Docker Compose CLI

The CLI tool comes with Docker for Mac/Windows but is a seperate download for Linux.  
It is not a production-grade tool but it is ideal for testing and local development.  
The two most common commands are:
- `docker-compose up` # setup volumes/networks and start all containers
- `docker-compose down` # stop all containers and remove cont/vol/net
  
Another benefit is if all you projects had a Dockerfile and a `docker-compose.yml` then new developer onboarding would be as follows:
- `git clone github.com/some/software`
- `docker-compose up`

# Images

`Docker Compose` can also build your custom images. It will build them with `docker-cpmpose up` if not found in the cache.  
They can also be rebuild with `docker-compose build`.  
And this is greater for complex builds that have allot of vars or build args