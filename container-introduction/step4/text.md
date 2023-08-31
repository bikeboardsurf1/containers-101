STEP4

<br>

>Having created a container we will now interact with it using a terminal. Remember any changes that you make in the terminal are ephemeral - if the container stops all changes will be lost.

We use 'exec' to attach to an existing container and the 'it' flags indicate that we want to use an interactive terminal. Run the following command: 

```plain
docker exec -it my-nginx-container /bin/sh
```{{exec}}

* To demonstrate that containers are ephemeral in nature lets create a file inside the running container, having run the command above run the following to create a sample file:

```plain
touch a-created-sample-file
```{{exec}}

* Note the file is present in the local directory
```plain
ls
```{{exec}}

* Now exit the container

```plain
exit
```{{exec}}

* Note that the container continues to run despite exiting the interactive terminal, this is because you attached to a container that was already running. 

```plain
docker ps
```{{exec}}

* Now lets restart the container

```plain
docker restart my-nginx-container
```{{exec}}


* Check if the file is there by creating an interactive terminal 

```plain
docker exec -it my-nginx-container /bin/sh
```{{exec}}

* List the contents of the current directory

```plain
ls
```{{exec}}

* Note the file is no longer there

>If the file is static and needed to be available in the container, it could have been added when the image was first built via the Dockerfile. Alternatively we could mount a volume, linking the container and the host.


