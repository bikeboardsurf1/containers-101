STEP2

> Now that we have verified that Docker is working and that we can run some basic commands lets start building an image.

<br>

* Navigate to the working directory that contains the exercises:
```plain
cd /root/containers101 
```{{exec}}


* List the contents, each folder corresponds with a step (in this case step2):

```plain
ls 
```{{exec}}

* Navigate to step 2:

```plain
cd step2
```{{exec}}

* View the contents of this step:

```plain
ls
```{{exec}}


* Evaluate the contents of the Dockerfile:

```plain
cat ~/containers101/step2/Dockerfile
```{{exec}}

<strong>As an overview:</strong>
* The starting point for this Dockerfile is rockylinux version 9.2 , this will mean when we run our container it will perform as if it is Rocky Linux
* Next are installing a popular web server called Nginx
* The following line copies a file called index.html from the host in the directory you are in to the image and will be located within the directory specified, when the container is running this file will be present
* The EXPOSE informs that this container should be run using port 80
* The CMD statement is used to pass arguments to the entry point of the container, in many cases, including in this scenario for Rocky Linux the entry point is /bin/sh


* Ensure that you are inside of the /root/containers101/step2 directory using then create a container image, tag the image 'my-nginx-image:1.0.0'. *Do not forget the dot at the end of the command* , this indicates to the container engine that the Dockerfile is in the current directory.

```plain
docker build -t my-nginx-image:1.0.0 .
```{{exec}}

>Tagging an image is optional, 'docker build .' would suffice to build an image but if this is to happen no tags will be associated with the image, for reference and tracking purposes it is much easier to add meaningful tags. 

>If no version is applied (in this case 1.0.0), 'latest' will be applied automatically. Using latest is NOT considered best practice as it is difficult to track the actual version and 'latest' does not always map to the latest version.

* Lets see if the image exists

```plain
docker images
```{{exec}}

* The output of the above should return two images, one will relate to the FROM line in the Dockerfile and the other will be your custom image.
* Note if you were to run docker build again the build will be very quick as the container image layers will have been cached locally. Run the following:

```plain
docker build -t my-nginx-image:1.0.0 .
```{{exec}}



