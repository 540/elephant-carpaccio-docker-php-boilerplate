.PHONY : main build-image build-container start test shell stop clean
main: build-image build-container

build-image:
	docker build -t elephant-carpaccio-docker-php-boilerplate .

build-container:
	docker run -dt --name elephant-carpaccio-docker-php-boilerplate -v .:/540/ElephantCarpaccio elephant-carpaccio-docker-php-boilerplate
	docker exec elephant-carpaccio-docker-php-boilerplate composer install

start:
	docker start elephant-carpaccio-docker-php-boilerplate

serve:
	php -S localhost:8000 -t ./src

test: start
	docker exec elephant-carpaccio-docker-php-boilerplate ./vendor/bin/phpunit tests/$(target)

shell: start
	docker exec -it elephant-carpaccio-docker-php-boilerplate /bin/bash

stop:
	docker stop elephant-carpaccio-docker-php-boilerplate

clean: stop
	docker rm elephant-carpaccio-docker-php-boilerplate
	rm -rf vendor
