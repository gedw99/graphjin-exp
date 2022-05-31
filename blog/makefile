export GO_ENV=development

print:
	@echo graphjin ex
	@echo GO_ENV

docker-print:
	docker-compose ps


db-help:
	docker-compose run api db 
db-setup:
	# works
	docker-compose run api db setup
db-reset:
	# does not work: will not work because the API server is using it.
	# so first kill the docker of graphjin
	docker-compose run api db reset
db-migrate-stat:
	docker-compose run api db migrate status
db-new:
	# replace with the table you want !!
	docker-compose run api db migrate new products
db-migrate-up:
	docker-compose run api db migrate up
db-migrate-down:
	docker-compose run api db migrate down

api-help:
	docker-compose run api help
api-serve:
	# we need to explicitly add the port for thw web gui, due to docker restricting port clashes.
	docker-compose run -p 8080:8080 api serve
	# webgui: http://0.0.0.0:8080/
api-admin-init:
	# Setup the admin database used for hot-depoly, etc
	# Inside it creates an admin schema and tables in the DB that is used for hot deploy.
	docker-compose run api init
api-admin-deploy:
	docker-compose run api deploy
api-secrets:
	docker-compose run api secrets