Given the image has now been created, let's start it up

* Here we specify that we want to call the running container is 'my-nginx-container' and the image that the container is based on is my-nginx-image.
* To indicate that the container needs to be run in detached mode we use the -d flag


```plain
docker run -d --name my-nginx-container my-nginx-image
```{{exec}}


