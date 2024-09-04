FROM debian:trixie

RUN apt-get update && apt-get upgrade -y

# RUN apt-get update && apt-get install -y curl

# git is needed for parsl to figure out it's own repo-specific
# version string
RUN apt-get update && apt-get install -y git

# useful stuff to have around
# RUN apt-get update && apt-get install -y procps

# for building documentation
RUN apt-get update && apt-get install -y pandoc

# for monitoring visualization
RUN apt-get update && apt-get install -y graphviz wget

# for commandline access to monitoring database
RUN apt-get update && apt-get install -y sqlite3

RUN apt-get update && apt-get install -y python3 python3-dev python3-venv

# for MPI dependency
RUN apt-get update && apt-get install -y gcc build-essential make pkg-config mpich

RUN mkdir /src
WORKDIR /src
RUN git clone https://github.com/parsl/parsl -b 2024.09.02
WORKDIR /src/parsl

RUN python3 -m venv /venv

RUN . /venv/bin/activate && python3 -m pip install . -r test-requirements.txt

WORKDIR /

# this will make the virtual env Python the primary python
ENV PATH /venv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
