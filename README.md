# Basic PyTorch project containerized

## installation

here of interest are 4 modes in vscode:

- local/local: normal mode as we know it
- local/container: vscode in a local Docker container, as specified in devcontainer.json/Dockerfile
- ssh/"local": vscode per ssh on Server, ssh-key must be exchanged, so that you can login without pwd. you then can open files and directories on server exactly as on the local machine.
- ssh/container: you can open/create the Docker container on the ssh-server as specified in devcontainer.json/Dockerfile.

### local container

- click on >< symbol  and select "reopen in container" or "rebuild container" 

### remote container

- take care that ssh keys are exchanged
- take care that docker runs on server in user mode
    ```sh
    sudo usermod -aG docker $USER
    ```
- click >< symbol  and select "connect to host..." + enter hostname or ip-address
- git clone this repo on the ssh server (either with ssh or using the shell in vscode which already runs on server)
- open project dir on host
- click ><  and select "reopen in container"

with click on >< you can with selecting "reopen in container" and "reopen in local filesystem" switch between container and normal mode

## test it

now that the container should run locally/on ssh server, open `init.ipynb` in order to test if everything is set up correctly, if you have cuda on you host, you should see your GPU listed

Also you can check the GPU with 
```sh
nvitop
```

