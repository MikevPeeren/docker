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