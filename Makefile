DOCKERBUILDCMD=docker build
DOCKERCOMPOSECMD= docker-compose


all:  novnc desktop wine

novnc:
	$(DOCKERBUILDCMD) -t novnc ./docker/noVNC/

desktop:
	$(DOCKERBUILDCMD) -t ubuntu-vnc-desktop ./docker/ubuntu-vnc-desktop/

wine:
	$(DOCKERBUILDCMD) -t desktop-wine ./docker/desktop-wine/

starcraft:
	$(DOCKERBUILDCMD) -t starcraft ./docker/desktop-starcraft/

up:
	$(DOCKERCOMPOSECMD) up -d 

down:
	$(DOCKERCOMPOSECMD) down