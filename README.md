# Liquibase-kubernetes
This is an example of application deployement with liquibase as initContainers on kubernetes cluster.  
Its essential to deploy liquibase as initContainers, in order to make sure kubernetes does not kill the process, and that the process has its all prerequisite database changes.  
steps:  
1. install kubernetes (minikube kubectl)
2. deploy postgres : kubectl apply -f postgresql-deployment.yaml
3. deploy changelogs:  kubectl apply -f liquibase-changelog-v1.yaml / liquibase-changelog-v2.yaml
4. deploy application with liquibase as initContainers: kubectl apply -f init_container_pod.yaml
scripts:
### 1. drop_tables.sh (should be executed before retest):
 delete the sample table, people and liquibase tables: DATABASECHANGELOG and DATABASECHANGELOGLOCK.

### 2. read_tables.sh
select from people table and liquibase tables: DATABASECHANGELOG and DATABASECHANGELOGLOCK.

WIP: 
- support multiple changelog files (includeAll)
- rollback
- use secret password

