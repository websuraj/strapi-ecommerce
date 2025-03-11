.PHONY: up down restart logs clean mysql-backup mysql-restore

# Start all services
up:
	docker-compose up --build -d

# Stop all services
down:
	docker-compose down

# Restart all services
restart: down up

# Show logs
logs:
	docker-compose logs -f

# Clean up containers and volumes
clean:
	docker-compose down -v

# Backup MySQL database
mysql-backup:
	docker exec mysql-strapi sh -c 'mysqldump -u strapi_user -pstrapi_password strapi_ecommerce > /var/lib/mysql/backup.sql'

# Restore MySQL database
mysql-restore:
	docker exec mysql-strapi sh -c 'mysql -u strapi_user -pstrapi_password strapi_ecommerce < /var/lib/mysql/backup.sql'
