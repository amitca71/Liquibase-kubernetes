
for each database, the following tables are being created:
DATABASECHANGELOG
DATABASECHANGELOGLOCK

How the <includeAll> tag runs in a changelog
All files inside of the included directory are run in alphabetical order.
https://docs.liquibase.com/concepts/advanced/includeall.html
If you choose to use the <includeAll> tag, make sure you have a naming strategy in place to ensure that you will never have conflicts or need to rename files to force a reordering.

kubectl logs myapp-pod -c liquibas
kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') bash
kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') -- psql -h localhost -p 5432 -d quarkus -U quarkus -c "select * from person"
kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') -- psql -h localhost -p 5432 -d quarkus -U quarkus -c "drop table person"
kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') -- psql -h localhost -p 5432 -d quarkus -U quarkus -c "drop table DATABASECHANGELOG"
kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') -- psql -h localhost -p 5432 -d quarkus -U quarkus -c "drop table DATABASECHANGELOGLOCK"
# Liquibase-kubernetes
