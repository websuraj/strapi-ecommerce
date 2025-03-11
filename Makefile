up:
	docker-compose up -d --build

down:
	docker-compose down

restart:
	make down
	make up

logs:
	docker-compose logs -f

clean:
	docker-compose down -v --remove-orphans
	docker system prune -f

install:
	docker-compose exec backend npm install
	docker-compose exec frontend npm install

start:
	make up
	docker-compose exec backend npm run develop &
	docker-compose exec frontend npm start &
