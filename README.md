Credits >>

https://fullstackopen.com/en/part12/building_and_configuring_environments

# Starter flavors

```bash
docker container run <repo-name>
docker container run --help
docker start <repo-name>
exit 
docker kill <repo-name>
docker start -i <repo-name>
```

## changes?

```bash
docker commit <repo-name> <repo-new>
```

### see changes

```bash
docker image ls
````

#### run image?

```bash
docker run -it <repo-name> bash
```

##### remove?

```bash
docker container rm <repo-name>
```

###### pro-start

```bash
docker container run -it --name <new-name> <online-repo-name:version> bash

mkdir /usr/src/app

# existing + non-blocking port

docker run --name <container-new-name> -p <new-port>:<default-port> <image-name>
```

###### copy from local?

```bash
docker container cp ./<local-file> <repo-name>:/user/src/app/<local-file>

echo "otherwise, build based off Dockerfile like below code. -t == tag "

docker build -t <new-name> .

docker run <new-name> 

docker run -it <new-name> bash #-it == interactive, no bash == repl
```

###### Removing Images

```bash
docker image ls

docker image --help 

docker image rm <new-name>
```


###### Docker cleanup


```bash
# Garbage collect old containers
docker container prune

# Reuse a container
docker stop <new-name>

docker start <new-name>

docker restart <new-name>
```
