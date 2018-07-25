.PHONY: setup serve clean shell

setup:
	docker-compose build

serve: setup
	docker-compose up

clean:
	docker-compose down --rmi local -v

shell:
	docker-compose run app bash

test:
	docker-compose run proxy nginx -t
	bash url_tests.sh