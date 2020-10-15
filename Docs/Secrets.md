# Secrets

Secrets is the easiest 'secure' solution for storaging secrets in Swarm. And a Secret is everything you do not wish other to find out. Examples are:

- Username & Passwords
- TLS Certificates
- SSH Keys
- Any data you would not prefer to be on the 'front page of news'

Secrets supports generic Strings or Binary content up to 500KB in size, and it does not require your app to be rewritten..

# Secrets Storage Container

Swarm Raft DB is encrypted on disk when you run a `swarm init`. It is only stored on the disks on the Manager Nodes and they only have the keys to unlock or decrypt it.  
The way the keys get to the container is through the control plane through TLS + Mutual Auth.  
First the secrets are stored in Swarm and then they are assigned to the services to determine who can use a secret.  
They look like files in the container but are actually in memory fs. 

# Commands

## Create a Secret from a txt file

```
docker secret create password password.txt
```

## Display all secrets

```
docker secret ls
```

## Inspect a secret

```
docker secret inspect password
```

## Get Secrets and use them, for exmaple for postgres

```
docker service create --name psql --secret psql_user --secret psql_pass -e POSTGRES_PASSWORD_FILE=/run/secrets/psql_pass -e POSTGRES_USER_FILE=/run/secrets/psql_user postgres
```