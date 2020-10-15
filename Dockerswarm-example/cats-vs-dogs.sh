## Goal: create networks, volumes, and services for a web-based "cats vs. dogs" voting app.
## Below are the services needed.

## Networks:

docker network create --driver overlay frontend
docker network create --driver overlay backend

### Services (names below should be service names)
### - vote
###     - bretfisher/examplevotingapp_vote
###     - web front end for users to vote dog/cat
###     - ideally published on TCP 80. Container listens on 80
###     - on frontend network
###     - 2+ replicas of this container

docker service create --name vote --replicas=3 -p 80:80 --network frontend bretfisher/examplevotingapp_vote

### - redis
###     - redis:3.2
###     - key/value storage for incoming votes
###     - no public ports
###     - on frontend network
###     - 1 replica NOTE VIDEO SAYS TWO BUT ONLY ONE NEEDED

docker service create --name redis --network frontend redis:3.2

### - worker
###     - bretfisher/examplevotingapp_worker:java
###     - backend processor of redis and storing results in postgres
###     - no public ports
###     - on frontend and backend networks
###     - 1 replica

docker service create --name worker --network frontend --network backend bretfisher/examplevotingapp_worker:java

### - db
###     - postgres:9.4
###     - one named volume needed, pointing to /var/lib/postgresql/data
###     - on backend network
###     - 1 replica
###     - remember set env for password-less connections -e POSTGRES_HOST_AUTH_METHOD=trust

docker service create --name db --network backend -e POSTGRES_HOST_AUTH_METHOD=trust --mount type=volume,source=db-data,destination=/var/lib/postgresql/data postgres:9.4

### - result
###     - bretfisher/examplevotingapp_result
###     - web app that shows results
###     - runs on high port since just for admins (lets imagine)
###     - so run on a high port of your choosing (I choose 5001), container listens on 80
###     - on backend network
###     - 1 replica

docker service create --name result --network backend -p 5001:80  bretfisher/examplevotingapp_result

