create table user (
    id int(11) not null auto_increment,
    username varchar(32) not null,
    birthday datetime default null,
    sex char(1) default null,
    address varchar(256) default null,
    primary key ('id')
);