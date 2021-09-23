create database mylog;
use mylog;

drop table if exists t_bicycle;
create table t_bicycle (
    id bigint primary key not null auto_increment,
    log_date date not null,
    distance double not null,
    description varchar(255)
);
insert into t_bicycle (log_date, distance) values
('2021-09-21',31.3);
insert into t_bicycle (log_date, distance) values
('2021-09-17',13.8);
insert into t_bicycle (log_date, distance) values
('2021-09-16',17.3);
insert into t_bicycle (log_date, distance) values
('2021-09-15',21);
insert into t_bicycle (log_date, distance) values
('2021-09-14',17.9);
insert into t_bicycle (log_date, distance) values
('2021-09-13',16.2);
insert into t_bicycle (log_date, distance) values
('2021-09-12',31.4);
insert into t_bicycle (log_date, distance) values
('2021-09-11',9.1);

select * from t_bicycle;
select max(distance) from t_bicycle;
select sum(distance) from t_bicycle;
select avg(distance) from t_bicycle;
delete from t_bicycle where id=3;

drop table if exists t_finance;
create table t_finance (
    id bigint primary key not null auto_increment,
    log_date date not null,
    amount double not null,
    tag1 varchar(255),
    tag2 varchar(255)
);

