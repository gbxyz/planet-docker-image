#  Torben Mogensen's Planet generator

This repository contains a Dockerfile that builds a Docker image for
[Torben Mogensen's Planet
Generator](http://hjemmesider.diku.dk/~torbenm/Planet/). A GitHub action in this
repository builds a new image once per week to ensure that the image on Docker
is up-to-date.

## Usage:

```
docker pull jodrell/planet
docker run --rm jodrell/planet:latest [OPTIONS]
```

Consult the [manual](http://hjemmesider.diku.dk/~torbenm/Planet/Manual.pdf)
(PDF) to see the options.
