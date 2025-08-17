restart:
	docker compose down
	docker compose up -d


devel-symlink:
	ln -s docker-compose-devel.yaml docker-compose.yaml


devel-uv-init:
	docker compose run flet uv init
	docker compose run flet uv add 'flet[all]' --dev
	docker compose run flet uv add 'wdb' --dev


devel-setup:
	make devel-symlink
	make restart


devel-new-setup:
	make devel-symlink
	make devel-uv-init
	make restart


tools-up:
	docker compose -f docker-compose-devel-tools.yaml up -d


tools-down:
	docker compose -f docker-compose-devel-tools.yaml down
