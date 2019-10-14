# docker-anaconda
Generates a Docker container using the [ContinuumIO container](https://github.com/ContinuumIO/docker-images/tree/master/anaconda3) as a base image for running Anaconda and Jupyter in Python 3.7. Some additional Python data science packages are installed.

# Installation
Build the anaconda docker image. Download the base image and run package updates from the Dockerfile

    $ docker-compose build

# Run
Start the docker container, with networking and a persistent data volume

    $ docker-compose up

Enter `http://localhost:8888` in your browser.
