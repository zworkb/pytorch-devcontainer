FROM pytorch/pytorch

# Install system dependencies
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    wget \
    git \
    screen \
    unzip \
    vim \
    procps \
    locales \
    python3-pip \
    && apt-get clean


# Install python stuff
RUN conda install -y numpy jupyter matplotlib pandas sympy

# Code server
# https://github.com/coder/code-server/releases
# ARG VERSION=4.3.0
# RUN mkdir -p ~/.local/lib ~/.local/bin
# RUN curl -sfL https://github.com/cdr/code-server/releases/download/v$VERSION/code-server-$VERSION-linux-amd64.tar.gz | tar -C ~/.local/lib -xz
# RUN mv ~/.local/lib/code-server-$VERSION-linux-amd64 ~/.local/lib/code-server-$VERSION
# RUN ln -s ~/.local/lib/code-server-$VERSION/bin/code-server /usr/local/bin/code-server

# WORKDIR /app
# ENV SHELL /bin/bash

# # install vscode addons
# RUN /usr/local/bin/code-server --install-extension ms-python.python

# # Instruction message
# RUN echo ################# config ###########
# RUN cat /root/.config/code-server/config.yaml
# RUN echo ################# config ###########

# # start the server
# CMD /usr/local/bin/code-server --cert --bind-addr 0.0.0.0:8080 /app

# docker build -t pytorch-vscode - < Dockerfile-dev
# docker run --name pytorch-vscode -v /Volumes/remote/.../datasets:/datasets -v $(pwd):/app -p 8080-8089:8080-8089 -it -d pytorch-vscode
# docker run --name pytorch-vscode --ipc host --gpus all -v $(pwd):/workspace -v $(pwd):/app -p 8080-8089:8080-8089 -it -d pytorch-vscode
# docker exec -it pytorch-vscode cat /root/.config/code-server/config.yaml
