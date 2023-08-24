STEP4

<br>

>Having created a container we will now interact with it using a terminal. Remember any changes that you make in the terminal are ephemeral - if the container stops all changes will be lost.

We use 'exec' to attach to an existing container and the 'it' flags indicate that we want to use an interactive terminal, when you have finished type 'exit' to end the interaction. 

```plain
docker exec -it my-nginx-container /bin/sh
```{{exec}}

Note even after exiting out the interaction, the container continues to run


