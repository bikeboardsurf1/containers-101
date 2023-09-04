STEP4

<br>

>Having created a container we will now interact with it using a terminal. 

We use 'exec' to attach to an existing container and the 'it' flags indicate that we want to use an interactive terminal. Run the following command: 

```plain
docker exec -it my-nginx-container /bin/sh


```{{exec}}

* You are now operating within the container's terminal

* Using the container terminal run the following to create a text file:

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


