kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') -- psql -h localhost -p 5432 -d quarkus -U quarkus -c "drop table person"
kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') -- psql -h localhost -p 5432 -d quarkus -U quarkus -c "drop table DATABASECHANGELOG"
kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') -- psql -h localhost -p 5432 -d quarkus -U quarkus -c "drop table DATABASECHANGELOGLOCK"
