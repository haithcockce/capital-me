clean all:
	make clean pods
	make clean images
	sudo rm -rf db/data
	mkdir db/data

clean pods:
	podman pod rm -a -f

clean images:
	podman rmi -a -f


build:
	podman-compose -p cm build

up: 
	podman-compose -p cm up --build
