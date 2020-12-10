.DEFAULT_GOAL := all

all:
	@echo "Start build and runnig;"
	docker build -t goland_build .
	docker run goland_build


build:
	@echo "Start build;"
	docker build -t goland_build .


run:
	@echo "Start running;"
	docker run goland_build
