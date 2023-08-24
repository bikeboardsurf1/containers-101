STEP3

<br>

>Given the image has now been created, let's start it up as a 'container'

* Here we specify that we want to call the running container *my-nginx-container* and the image that the container is based on is *my-nginx-image*.
* To indicate that the container needs to be run in *detached* mode we use the -d flag
* Note we need to provide the version number (in this case 1.0.0), this is because there could be many different versions, we need to clarify which one. If a version is not provided the container engine will assume 'latest'. Note 'latest' does not necessarily refer to the most up to date version, it is only a tag used to refer to an image that has been given the tag of latest. It is best practice NOT to use latest for production systems as this could be unstable


```plain
docker run -d --name my-nginx-container my-nginx-image:1.0.0
```{{exec}}


