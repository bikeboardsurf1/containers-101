STEP3

<br>

>Given the image has now been created, let's start it up as a 'container'

* Here we want to give the running container a name *my-nginx-container* and inform that the image the container is based on is called *my-nginx-image* and is version *1.0.0*
* If the version number is NOT provided the container engine will assume 'latest' and if an image does not contain a tag name of 'latest'locally, the engine will attempt to find it from an online repository e.g docker hub and if it still cannot be found  an error will be returned
* To indicate that the container needs to be run in the background (or *detached* mode) we use the -d flag
* Note we have provided a port mapping of 8085:80, the number on the left of the colon indicates the host port and the number on the right is the container port. By default Nginx is set to port 80

```plain
docker run -d -p 8085:80 --name my-nginx-container my-nginx-image:1.0.0
```{{exec}}

* To see if the container is running use:
```plain
docker ps
```{{exec}}

>After running the above command you can see the image that the container based on, the status, the port mapping and the name of the container

* To test if the container is running the webserver as expected we can use the curl command, this should return some html:

```plain
curl 127.0.0.1:8085
```{{exec}}

## Stopping a container

* To stop a running container use docker stop command. Docker kill can be used but it is less graceful.

```plain
docker stop my-nginx-container
```{{exec}}

* Note the status of ALL containers including a stopped container can be seen by adding the -a flag to the docker ps command as shown:

```plain
docker ps -a
```{{exec}}

* You will not be able to run a new container with the same name even if the container with the shared name is stopped. Note the error when the following is run:

```plain
docker run -d -p 8085:80 --name my-nginx-container my-nginx-image:1.0.0
```{{exec}}

* The container reference with that name has to be removed first before a new container with the same name can be started up. Run the following to delete the container reference and to start up a new container:

```plain
docker rm my-nginx-container 
docker run -d -p 8085:80 --name my-nginx-container my-nginx-image:1.0.0
```{{exec}}

* You can now see it running again using the docker ps command

```plain
docker ps
```{{exec}}






