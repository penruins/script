create database mydb001;

create table t_people(
    id bigint not null,
    name varchar(30),
    age int,
    primary key (id)
);

select count(*) from t_people;

# ∑÷“≥≤È—Ø
select * from t_people limit 3 offset 4;

select * from pg_catalog.pg_get_keywords();