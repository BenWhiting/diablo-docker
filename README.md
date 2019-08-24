# lan-party-docker

I wanted to run older games on any computer with minimal setup.....
So I am slapping them into docker images, inside of
an xfce container and seeing if I can get them to run.

## How this works

1. Download https://tigervnc.org/
2. Build docker images
    * `docker build -t ubuntu-vnc-desktop ubuntu-vnc-desktop`
    * `docker build -t desktop-wine desktop-wine`
3. Run docker image `docker run --rm -dti -p 5901:5901 ${IMAGE}`
4. Connect to the container via vncviewer at `localhost:5901`

## Useful docs References

* <https://starcraft.com/en-us/articles/20674424>
* <https://tigervnc.org/>
* <https://www.winehq.org/>
