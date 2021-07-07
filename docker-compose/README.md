boot docker-compose: docker-compose up -d
for subsequent calls up liquibase execute:
docker-compose up liquibase 


The configuration is executing all the files under changelog/sql according to alphabetical order
it also picks changelog.xml from changelog directory
the files are checkedsum, so changing file after execution will cause unrecoverable error



