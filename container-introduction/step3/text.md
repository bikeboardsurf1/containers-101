STEP3

<br>

>Given the image has now been created, let's start it up as a 'container'

* Here we want to give the running container a name *my-nginx-container* and inform that image that the container is based on is *my-nginx-image* version *1.0.0*
* If the version number is NOT provided the container engine will assume 'latest' and if an image does not contain a tag name of 'latest' an error is likely to be returned
* To indicate that the container needs to be run in the background (or *detached* mode) we use the -d flag

```plain
docker run -d --name my-nginx-container my-nginx-image:1.0.0
```{{exec}}


