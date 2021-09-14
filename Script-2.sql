create database db_shiro;

DROP TABLE IF EXISTS `t_user`;
create table `t_user` (
	`id` int (11),
	`username` varchar (32),
	`password` varchar (32),
	`salt` varchar (32),
	`age` int (11),
	`email` varchar (32),
	`address` varchar (128)
); 

create database db_recruitment;
use db_reruitment;

DROP TABLE IF EXISTS `t_recruitment`;
create table `t_recruitment` (
	`id` int not null primary key,
	`company_id` int,
	`job_name` varchar (100),
	`salary` varchar (100),
	`location` varchar (100),
	`education_background_id` int,
	`experience_year` int,
	`tags` varchar (500),
	`update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
	`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON INSERT CURRENT_TIMESTAMP,
	`job_type_id` int,
	`count` int,
	`first_language_id` int,
	`desc` text
);
DROP TABLE IF EXISTS `t_company`;
create table `t_company` (
	`id` int not null primary key,
	`company_name` varchar (255),
	`kind` varchar (255), -- 性质
	`category` varchar (255), -- 类型
	`website` varchar (255), -- 网址
	`address` varchar (255) -- 地址
);
insert into `t_company` (id,company_name,kind,category,website,address)
	VALUES (1,'杭州海康威视数字技术有限责任公司'，'','','www.website.com','浙江省杭州市');


