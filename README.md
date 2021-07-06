# Liquibase-kubernetes
This is an example of application deployement with liquibase as initContainers on kubernetes cluster.  
Its essential to deploy liquibase as initContainers, in order to make sure kubernetes does not kill the process, and that the process has its all prerequisite database changes.  
steps:  
1. install kubernetes (minikube kubectl)
2. deploy postgres : kubectl apply -f postgresql-deployment.yaml

scripts:
### 1. drop_tables.sh :
 delete the sample table, people and liquibase tables: DATABASECHANGELOG and DATABASECHANGELOGLOCK.

### 2. read_tables.sh
select from people table and liquibase tables: DATABASECHANGELOG and DATABASECHANGELOGLOCK.

WIP: 
- support multiple changelog files (includeAll)
- rollback
- use secret password

