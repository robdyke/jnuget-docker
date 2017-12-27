# jnuget-docker
Dockerfile for [jnuget](https://bitbucket.org/aristar/jnuget) - a Pure Java NuGet hosting server

## Docker

### Build Image

    docker build -t robdykedotcom/jnuget-docker:latest .

### Run Container

    docker run -v $(pwd):/var/lib/jnuget robdykedotcom/jnuget-docker:latest

Example using current directory as storage

    docker run --rm -p 8080:8080 -v $(pwd)/Packages:/var/lib/jnuget/Packages robdykedotcom/jnuget-docker:latest

## Usage

Open `http://localhost:[port]` and you will get the start page of jnuget.

Example:

    http://127.0.0.1:8080

### Credentials
* User: admin
* Password: admin


## Notes

jwilder/nginx-proxy works well with the dockerfile


### Tomcat

This version is sets jNuget as the default(and only) tomcat webapp, so you can access it directly from the domain root.

If using with jwilder/nginx-proxy, adding the -e VIRTUAL_HOST="****" to your run command will bind jNuget to port 80.

### Storage

Your setting and pushed packages are stored in [package storage directory].

## Caution
The Dockerfile does not set configuration for security (e.g. TLS,Authentication).

If [package storage directory] is not set changes (user setting,pushed packages) are lost when container process is killed.

## Authors

* [Rob Dyke](https://github.com/robdyke)
* [Asynchrony](https://gitlab.com/asynchrony) - [jnuget-docker](https://github.com/asynchrony/jnuget-docker)


## License

This project is licensed under the MIT License See [LICENSE](LICENSE) file for details.
