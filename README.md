# Doom 2

Doom 2! In a Docker Container!

The game media for this has been sourced from [archive.org](https://archive.org/details/Doom-2).

## Usage

For detailed usage, consult README.md from upstream
[classiccontainers/dosbox](https://github.com/classic-containers/dosbox) image.

### Linux

```shell
$ docker run \
    -e DISPLAY=unix$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --device /dev/snd \
    classiccontainers/doom2
```

### Docker for Windows

This requires an X11 and Pulse Adudio server; for more information on how to
set those up, consult the README.md in the repository for the upstream image.

```shell
$ docker run \
    -e DISPLAY=host.docker.internal:0 \
    -e PULSE_SERVER=host.docker.internal \
    classiccontainers/doom2
```

## Saving Game Progress

Per the documentation in the upstream image, the A drive inside the dosbox
environment will be mounted to /var/games/dosbox. If you want data to be
available after the container terminates, simply mount a local directory
to /var/games/dosbox in the container.

```shell
$ docker run \
    -v /home/user1/savedata:/var/games/dosbox \
    classiccontainers/doom2
```
