.PHONY: clean-all clean-pods clean-images clean-files

clean-all: clean-pods clean-images clean-files

clean-pods:
	podman pod rm -a -f

clean-images:
	podman rmi -a -f

clean-files: 
	sudo rm -rf backend/db.sqlite3
	sudo rm -rf db/data
	mkdir db/data

build:
	podman-compose -p cm build

up: 
	podman-compose -p cm up -d --build
