export GO_ENV=development

print:
	@echo graphjin ex
	@echo GO_ENV

db-help:
	docker-compose run api db 
db-reset:
	# this will not work because the API server is using it.
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
	# we need to explicitly add the port for thw web gui.
	docker-compose run -p 8080:8080 api serve
	# webgui: http://0.0.0.0:8080/
api-admin-init:
	# this create a schema and tables in the DB that is used for hot deploy.
	docker-compose run api init
api-secrets:
	# 
	docker-compose run api secrets