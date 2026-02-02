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
```

###### copy from local?

```bash
docker container cp ./<local-file> <repo-name>:/user/src/app/<local-file>
```

