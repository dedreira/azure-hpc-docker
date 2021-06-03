# Introduction
This repo tries to create a docker image ready to run HPC - MPI workloads in Azure Batch

# Generation Order for Dockerfiles

##  Install GCC and prerequisites
```` sh
docker build -t centos-hpc-compiler -f Dockerfile .
````
## Install Mellanox drivers
```` sh
docker build -t centos-hpc-mellanox -f Dockerfile.mellanox .
````
