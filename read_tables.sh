kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') -- psql -h localhost -p 5432 -d quarkus -U quarkus -c "select * from person"
kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') -- psql -h localhost -p 5432 -d quarkus -U quarkus -c "select * from DATABASECHANGELOG"
kubectl exec -it $(kubectl get pods | grep postgres | cut -f 1 -d' ') -- psql -h localhost -p 5432 -d quarkus -U quarkus -c "select * from DATABASECHANGELOGLOCK"
