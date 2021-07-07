--liquibase formatted sql
--changeset amit:1
    create table person (
      id serial primary key,
      firstname varchar(255),
      lastname varchar(255),
      age int
    );
--rollback drop table person;
