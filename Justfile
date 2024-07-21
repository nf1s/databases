default:
	@just --list

opensearch arg:
	@./scripts/opensearch.sh "{{arg}}"

postgres arg:
	@./scripts/postgres.sh "{{arg}}"

mongo arg:
	@./scripts/mongo.sh "{{arg}}"

pgadmin4 arg:
	@./scripts/pgadmin4.sh "{{arg}}"
