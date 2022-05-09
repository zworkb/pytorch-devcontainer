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

