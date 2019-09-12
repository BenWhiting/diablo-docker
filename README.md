[![Build Status](https://travis-ci.org/BenWhiting/lan-party-docker.svg?branch=master)](https://travis-ci.org/BenWhiting/lan-party-docker)

# lan-party-docker

I wanted to be able to play older video games through a web-browser,
so I build a collection of docker images to allow me to do this.

The two images of importance are the noVNC web interface and starcraft containers.

## Docker-Image Breakdown

1. ubuntu-vnc-desktop
    ubuntu based docker image with vnc installed via tigervnc

2. desktop-wine
    ubuntu-vnc-desktop based docker image with wine installed

3. starcraft
    desktop-wine based docker image that copies in the starcraft installer .exe

4. noVNC
   ubuntu based noVNC web client to access the starcraft container

## How this works

1. Download the file `StarCraft-Setup.exe` from the [official blizzard website](https://starcraft.com/en-us/articles/20674424).
2. Move `StarCraft-Setup.exe` to ./docker/starcraft/install
3. Build docker images `make all` 
4. Run docker compose `make up`
5. Connect novnc compose file at `http://localhost:8080/vnc.html`
    - host: localhost
    - port: 8080
    - password: password
 6. Navigate to where you mounted the `StarCraft-Setup.exe` and run `wine StarCraft-Setup.exe` to complete setup
