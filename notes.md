# Starter flavors

docker container run <repo-name>
docker container run --help
docker start <repo-name>
exit 
docker kill <repo-name>
docker start -i <repo-name>

## changes?

docker commit <repo-name> <repo-new>

### see changes

docker image ls

#### run image?

docker run -it <repo-name> bash

##### remove?

docker container rm <repo-name>

###### pro-start

docker container run -it --name <new-name> <online-repo-name:version> bash

mkdir /usr/src/app

###### copy from local?

docker container cp ./<local-file> <repo-name>:/user/src/app/<local-file>


