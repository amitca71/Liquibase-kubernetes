
    --liquibase formatted sql
    --changeset amit:2
    alter table person rename column firstName to first_name;
    alter table person rename column lastName to last_name;
