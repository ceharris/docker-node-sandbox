docker-node-sandbox
===================

A simple sandbox Docker image for experimenting with _Node.js_

The container runs as user _node_, and has a working directory of
`/home/node`. The `sudo` command can be used to run any command with
privileges. You could mount a host directory on the containers `/home/node`
directory if you wish.

The image is based on Debian Jessie, and includes the _vim_ editor and
_curl_.


### Build

```
docker build -t node-sandbox
```

### Run

```
docker run -ti node-sandbox
```

Using a host directory for the _node_ user's home directory.

```
docker run -v $HOME/node-sandbox:/home/node -ti node-sandbox
```
