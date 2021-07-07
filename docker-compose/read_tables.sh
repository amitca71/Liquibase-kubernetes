docker-compose exec db  psql -U postgres  -c "select * from person"
docker-compose exec db  psql -U postgres  -c "select * from products"
docker-compose exec db  psql -U postgres  -c "select * from DATABASECHANGELOG"
docker-compose exec db  psql -U postgres -c  "select * from DATABASECHANGELOGLOCK"
