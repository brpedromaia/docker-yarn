## Apache Hadoop 2.7.7 Docker images
**[See all here](https://hub.docker.com/r/brpedromaia/hadoop/)**
# Yarn docker image

***Note: This docker image requires *docker network running* and the following containers running: ***
    01. Namenode


# Build the image

If you'd like to try directly from the Dockerfile you can build the image as:

```
docker build  -t brpedromaia/hadoop-yarn:latest yarn/ 
```
# Pull the image

The image is also released as an official Docker image from Docker's automated build repository - you can always pull or refer the image when launching containers.

```
docker pull brpedromaia/hadoop-yarn
```

# Start a container

***In order to use the Docker image you have just build or pulled use:***

```
docker run -itd --net=dockerlan --hostname=yarn --name=yarn brpedromaia/hadoop-yarn
```

***To enter in container:***

```
docker exect -it hadoop-yarn bash
```

**Make sure that SELinux is disabled on the host. If you are using boot2docker you don't need to do anything.**

```
docker run -it --net=dockerlan --hostname=yarn --name=yarn brpedromaia/hadoop-yarn -bash
```

**You would like to have a tunnel port exposed to localhost.**

```
docker run -it --net=dockerlan --hostname=yarn -p 8088:8088 -p 19888:19888 --name=yarn brpedromaia/hadoop-yarn 
```

# Testing

You can found in browser:

```
http://localhost:8088 
```


# Automate everything

To automate everything add code before "while" on yarn-entrypoint.sh 
