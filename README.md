# jnuget-docker
Dockerfile for [jnuget](https://bitbucket.org/aristar/jnuget) (Pure Java NuGet hosting server)

## Prerequisites

you must install [docker](http://docs.docker.com/) in your system.
if you do not have linux,use [boot2docker](http://boot2docker.io/)

## Usage
run following command

    docker build -t [imagename] .
    docker run -v [package storage directory]:/var/lib/jnuget -p [port for hosting]:8080 [imagename]

then, open http://localhost:[port for hosting]/jnuget and you will get the start page of jnuget.
initial login ID is "admin:adminadmin"
your setting and pushed packages are stored in [package storage directory].

## Caution
The Dockerfile does not set configuration for security(e.g. TLS,Authentication),
so you must use it at your own risk

if you do not set [package storage directory], changes(user setting,pushed packages) are lost when container process is killed.
