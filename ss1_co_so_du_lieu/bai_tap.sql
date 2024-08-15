create database student_management;
use student_management;
create table Class(
id int,
name varchar(200)
);
create table Teacher(
id int,
name varchar(200),
age int,
country varchar(50)
);
insert into Class(id,name) values(1,'c05');
insert into Teacher(id,name,age,country) values (1,'vy',30,'viet nam');