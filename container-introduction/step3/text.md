STEP3

<br>

>Given the image has now been created, let's start it up as a 'container'

* Here we want to give the running container a name *my-nginx-container* and inform that image that the container is based on is *my-nginx-image* version *1.0.0*
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

* We can see if this container is running the webserver as expected using the curl command, this should which should return some html:

```plain
curl 127.0.0.1:8085
```{{exec}}




