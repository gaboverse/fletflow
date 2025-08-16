devel-setup:

    # Create docker devel symlink
	ln -s docker-compose-devel.yaml docker-compose.yaml

	# Clean restart for all services
	docker compose down
	docker compose up -d


tools-up:
    docker compose -f docker-compose-devel-tools.yaml up -d


tools-down:
    docker compose -f docker-compose-devel-tools.yaml down
