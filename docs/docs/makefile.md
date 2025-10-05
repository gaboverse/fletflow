# Makefile
```
restart:
	docker compose down
	docker compose up -d
```
```
devel-symlink:
	ln -s docker-compose-devel.yaml docker-compose.yaml
```
```
devel-uv-init:
	docker compose run --rm flet uv init
	docker compose run --rm flet uv add 'flet[all]' --dev
	docker compose run --rm flet uv add 'wdb' --dev
```
```
devel-cleanup:
	docker compose run --rm flet rm -rf /app/.git
```
```
devel-setup:
	make devel-symlink
	make restart
```
```
devel-new-setup:
	make devel-symlink
	make devel-uv-init
	make devel-cleanup
	make restart
```
```
tools-up:
	docker compose -f docker-compose-devel-tools.yaml up -d
```
```
tools-down:
	docker compose -f docker-compose-devel-tools.yaml down
```