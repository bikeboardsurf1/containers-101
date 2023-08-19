
Now that we have verified that Docker is working and that we can run some basic commands lets start building container images

<br>

Create a new directory, this is where all container related files will reside.

```plain
mkdir ~/containers101
```{{exec}}

Navigate to the newly created directory

```plain
cd ~/containers101
```{{exec}}

Copy  the 'Dockerfile' located in the high level home directory to the containers101 sub directory

```plain
cp ~/Dockerfile ~/containers101/
```{{exec}}

Evaluate the contents of the Dockerfile 

```plain
cat ~/containers101/Dockerfile
```{{exec}}

You will notice the Dockerfile requires an additional file called 'default', copy this file to the same directory as the newly copied Dockerfile

```plain
cp ~/default ~/containers101/
```{{exec}}


Now that we have the necessary files, lets create a container image, tag the image 'my-nginx-image:1.0.0'. Do not forget the dot at the end of the command, this indicates to the container engine that the Dockerfile is in the current directory

```plain
docker build -t my-nginx-image:1.0.0 .
```{{exec}}

Lets see if the image exists
```plain
docker images
```{{exec}}

You should see the image that you created using the tag in the previous command


