STEP5

Over to you

<br>

Locate the files for this exercise in the appropriate directory
```plain
cd /root/containers101/step5
```{{exec}}

### Building the image ###
List the contents of the directory

```plain
ls
```{{exec}}

Evaluate the contents of myfile:
```plain
cat myfile
```{{exec}}


you will note there is a file called 'myfile', note this is in the form of a Dockerfile

Create an image from 'myfile' with the following instructions:

* Image name: my-web-server-image
* Version 0.0.1

>HINT: The docker engine will need to be informed of the location of the file as it is not called the default name 'Dockerfile'

### Start the container ###
Once the image above has been created, start up a container but with the following instructions:

* ensure its called <strong>my-web-server</strong> 
* the mapping this should run on <strong>port 81 of the host</strong> and mapped to <strong>port 80 on the container</strong> itself
* it must run in detached mode

>Note the container is not operating as expected, if you attempt to access the URL of that container via the specified port , the content (html) is not returned, instead 'curl: (52) Empty reply from server' is provided.

```plain
curl localhost:81
```{{exec}}

Resolve the problem above to ensure that the container is running as expected.








