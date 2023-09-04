STEP5

<br>

Locate the files for this exercise in the appropriate directory
```plain
cd /root/containers101/step5
```{{exec}}


<strong>Alternative to Dockerfile file name</strong>
List the contents of the directory

```plain
ls -R
```{{exec}}

you will note there is a file called 'myfile'
Create an image from 'myfile' with the name my-web-server-image and version 0.0.1

<strong>Start the container </strong>
Once the image above has been created, start up a container, ensure its called my-web-server-container the mapping this should run on port 81 of the host and mapped to port 80 on the container itself

>Note the container is not as expected, if you attempt to access the URL of that container via the specified port , the content is not returned as expected

```plain
curl localhost:81
```{{exec}}



<strong>Trouble Shooting</strong>
Resolve the problem above








