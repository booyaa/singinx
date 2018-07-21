.PHONY: setup serve clean shell

setup:
	docker-compose build

serve: setup
	docker-compose up -d

clean:
	docker-compose down --rmi local -v

shell:
	docker-compose run app bash