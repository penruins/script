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
use db_recruitment;

drop database db_recruitment;


DROP TABLE IF EXISTS `t_recruitment`;
create table `t_recruitment` (
    `id` int not null primary key,
    `company` varchar(255),
    `job_name` varchar (100),
    `salary` varchar (100),
    `location` varchar (100),
    `education_background` varchar(255), -- 学历
    `experience_year` int,
    `tags` varchar (500),
    `update_time` timestamp,
    `create_time` timestamp,
    `job_type` varchar(255), -- 工作类型
    `count` int, -- 工作经验
    `first_language` varchar(255), -- 第一语言
    `description` text -- 描述
);
insert into db_recruitment.t_recruitment values (1,'杭州海康威视数字技术股份有限公司','应用软件开发工程师','10k~15k',
'云南省昆明市盘龙区王旗营金领地大厦','本科及以上',1,'五险 带薪年假 公积金 出差补贴 提供食宿 交通补贴',now(),now(),'全职',10,
'','有良好的沟通能力，吃苦耐劳，能承受一定的工作压力');

select * from db_recruitment.t_recruitment;

DROP TABLE IF EXISTS `t_recruitment`;
create table `t_recruitment` (
	`id` int not null primary key,
	`company_id` int,
	`job_name` varchar (100),
	`salary` varchar (100),
	`location` varchar (100),
	`education_background_id` int, -- 学历
	`experience_year` int,
	`tags` varchar (500),
	`update_time` timestamp,
	`create_time` timestamp,
	`job_type_id` int, -- 工作类型
	`count` int, -- 工作经验
	`first_language_id` int, -- 第一语言
	`desc` text -- 描述
);


DROP TABLE IF EXISTS `t_job_type`;
create table `t_job_type` (
    `id` int not null primary key,
    `name` varchar (255)
);
insert into `t_job_type` (id, name) values (1,'全职');
insert into `t_job_type` (id, name) values (2,'兼职');
insert into `t_job_type` (id, name) values (3,'临时');
select * from t_job_type;

DROP TABLE IF EXISTS `t_education_background`;
create table `t_education_background` (
    `id` int not null primary key,
    `name` varchar (255)
);
insert into `t_education_background` (id, name) values (1,'小学');
insert into `t_education_background` (id, name) values (2,'初中');
insert into `t_education_background` (id, name) values (3,'高中');
insert into `t_education_background` (id, name) values (4,'中专');
insert into `t_education_background` (id, name) values (5,'本科');
insert into `t_education_background` (id, name) values (6,'硕士研究生');
insert into `t_education_background` (id, name) values (7,'博士研究生');
select * from t_education_background;

DROP TABLE IF EXISTS `t_first_language_id`;
create table `t_first_language_id` (
	`id` int not null primary key,
	`name` varchar (255)
);
insert into `t_first_language_id` (id, name) values (1,'中文'),(2,'英语');
insert into `t_first_language_id` (id, name) values (3,'印地语'),(4,'德语');
insert into `t_first_language_id` (id, name) values (5,'日语'),(6,'阿拉伯语');
insert into `t_first_language_id` (id, name) values (7,'俄罗斯语言'),(8,'葡萄牙语');
insert into `t_first_language_id` (id, name) values (9,'西班牙语'),(10,'法语');
select * from t_first_language_id;

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
	VALUES (1,'杭州海康威视数字技术有限责任公司','','','www.website.com','浙江省杭州市');

select * from t_company;

drop table if exists `t_resume`;
create table `t_resume` (
    `id` bigint not null primary key auto_increment,
    `recruitment_id` bigint not null,
    `name` varchar(255),
    `telephone` varchar(11),
    `email` varchar(100),
    `birthday` date,
    `graduate_date` date ,
    `nation` varchar(100),
    `region` varchar(100),
    `card_kind` varchar(100),
    `card_number` varchar(100),
    `expect_month_salary` varchar(100),
    `expect_year_salary` varchar(100),
    `politics_perspective` varchar(100),
    `minzu` varchar(100),
    `certificate` varchar(100),
    `hobby` varchar(100),
    `emergency_contact` varchar(100),
    `emergency_number` varchar(11),
    `english_rank` varchar(100),
    `english_score` varchar(100),
    `qq` varchar(20),
    `wechat` varchar(100),
    `now_location` varchar(100),
    `expect_work_location` varchar(100),
    `mail_location` varchar(255),
    `is_work_foreign` varchar(1),
    `recruitment_source` varchar(255),
    `school` varchar(255),
    `school_location` varchar(255),
    `school_number` varchar(20),
    `school_rank` varchar(10),
    `school_campus_name` varchar(255),
    `school_career_name` varchar(255),
    `education_background` varchar(255),
    `learning_kind` varchar(255),
    `description` text
);

create view view_resume(id,name,telephone,now_location,company,job_name,education_background)
as
    select t_resume.id,t_resume.name,t_resume.telephone,t_resume.now_location,t_recruitment.company,t_recruitment.job_name,
           t_recruitment.education_background
    from t_recruitment,t_resume
    where t_resume.recruitment_id = t_recruitment.id;

select * from view_resume;



