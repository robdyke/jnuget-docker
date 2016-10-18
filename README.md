# jnuget-docker
Dockerfile for [jnuget](https://bitbucket.org/aristar/jnuget) (Pure Java NuGet hosting server)

## Prerequisites

you must install [docker](http://docs.docker.com/) in your system.
if you do not have linux,use [boot2docker](http://boot2docker.io/)

## Usage
run following command

    docker build -t [imagename] .
    docker run -v [package storage directory]:/var/lib/jnuget [imagename]

then, open http://localhost:[port] and you will get the start page of jnuget.

This version is sets jNuget as the default(and only) tomcat webapp, so you can access it directly from the domain root.
If using with jwilder/nginx-proxy, adding the -e VIRTUAL_HOST="****" to your run command will bind jNuget to port 80. 

initial login ID is "admin:adminadmin"

your setting and pushed packages are stored in [package storage directory].

## Caution
The Dockerfile does not set configuration for security(e.g. TLS,Authentication),
so you must use it at your own risk

if you do not set [package storage directory], changes(user setting,pushed packages) are lost when container process is killed.
