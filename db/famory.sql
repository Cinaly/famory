set names utf8;
drop database if exists famory;
create database famory charset=utf8;
use famory;

#类别表
create table category(
    cid int primary key,
    cname varchar(16)
);
insert into category values
(1,'婚纱'),(2,'礼服'),(3,'龙凤褂'),(4,'小礼服'),(5,'亲子装')
(6,'小公主裙'),(7,'中国刺绣');

#子类表
create table type(
    tid int primary key,
    tname varchar(16),
    cid int
);
insert into type values
(1,"",1);

#产品表
create table products(
    pid int primary key auto_increment,
    pname varchar(32),
    price decimal(7,2),
    img varchar(256),
    cid int
);
insert into products values
(null,"",539,"",1);

#产品详情表

#时装周

#实体店

#首页banner



