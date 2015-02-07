# proxy-npm-bower

A simple Dockerfile that will spin up an nginx reverse proxy for npm and bower.  This was built to help us speed up builds and let us build even if npm or bower were down.

## Usage

`docker run -d firstandthird/proxy-npm-bower`

* Get container ID: `docker ps`
* Get IP: `docker inspect --format '{{ .NetworkSettings.IPAddress }}' containerid`
* Get NPM Port: `docker port containerid 8001`
* Get Bower Port: `docker port containerid 8002`

## NPM

```
npm install bower --registry http://ip:npm_port/
```

## Bower

```
bower install popbox --config.registry="http://ip:bower_port"
```

