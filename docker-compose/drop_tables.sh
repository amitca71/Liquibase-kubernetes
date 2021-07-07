docker-compose exec db  psql -U postgres -c "drop table person"
docker-compose exec db  psql -U postgres -c "drop table products"
docker-compose exec db  psql -U postgres -c "drop table DATABASECHANGELOG"
docker-compose exec db  psql -U postgres -c "drop table DATABASECHANGELOGLOCK"
