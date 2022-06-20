---
title: "MariaDB: Docker compose and Docker run"
slug: mariadb-docker-compose-and-docker-run
date: 2022-06-20
description: Lets see how MariaDb works in a docker container
keywords: Docker compose MariaDB, docker run MariaDB
tags:
  - Docker
  - Database
ShowToc: true
cover:
  image: golang missing function body or unexpected semicolon.jpg
  caption: golang missing function body or unexpected semicolon
---

# Running MariaDB in a docker container


```bash
docker run -d \
    --name my-mariadb \
    -p 3306:3306 \
    -v $(pwd)/mariadb/data/:/var/lib/mysql \
    --user 1000:1000 \
    -e MYSQL_ROOT_PASSWORD=password \
    -e MYSQL_PASSWORD=password \
    -e MYSQL_USER=admin \
    -e MYSQL_DATABASE=database \
    mariadb:latest
```

- The -d instructs docker container to run as a detached process. It run container in background and print container ID

- -p is for port mapping. We are instructing the container to expose the container port externally. Container port 3306 is mapped to host port 3306. That means the service can be accessed through localhost:3306

- The -v directive is used to mount volumes. In our case we are mounting the container volume /var/lib/mysql to host path ~/apps/mariadb/data. Containers are ephemeral devices that will contain its data for the time it is running. Once a container is stopped, its data is lost. Mounting volumes ensures that the data is added to a host path that can be reused when the container is restarted.
- The --user argument is used to run the container with an arbitrary user (non root user). This happens if you need to run mysqld with a specific UID/GID.
- The -e argument is for the environment variables. The supplied environment variables will be used to set up a Mariadb user, password and a database.

```bash
docker exec -it my-mariadb /bin/bash
```

We can see all containers running
```bash
 docker container ls
 ```

We can see even those who were stopped
```bash
 docker container ls -a
 ```

We take the container ID and we use that
```bash
docker restart "container-id"
```



# Docker compose

```bash
services:
  mariadb:
    image: mariadb:latest
    ports:
      - 3306:3306
    volumes:
      - ./mariadb/compose/:/var/lib/mysql
    environment:
        - MYSQL_ROOT_PASSWORD=password
        - MYSQL_PASSWORD=password
        - MYSQL_USER=admin
        - MYSQL_DATABASE=database
```


```
docker-compose up -d
```

- up brings up the container
- -d in a detached mode

Login the container bash
```
docker-compose exec mariadb /bin/bash
```
