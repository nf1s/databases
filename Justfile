default:
	@just --list

elastic arg:
	@./scripts/elastic.sh "{{arg}}"

postgres arg:
	@./scripts/postgres.sh "{{arg}}"

pgadmin4 arg:
	@./scripts/pgadmin4.sh "{{arg}}"

