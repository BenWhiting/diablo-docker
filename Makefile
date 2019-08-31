DOCKERBUILDCMD=docker build
DOCKERCOMPOSECMD= docker-compose


all:  build-novnc build-desktop build-wine

build-novnc:
	$(DOCKERBUILDCMD) -t novnc ./docker/noVNC/

build-desktop:
	$(DOCKERBUILDCMD) -t desktop ./docker/ubuntu-vnc-desktop/

build-wine:
	$(DOCKERBUILDCMD) -t desktop ./docker/desktop-wine/

build-starcraft:
	$(DOCKERBUILDCMD) -t starcraft ./docker/desktop-starcraft/

up:
	$(DOCKERCOMPOSECMD) up -d 

down:
	$(DOCKERCOMPOSECMD) down