create database info;
use info;
create table empl(id int, name varchar(100), age int ,dep varchar(100),salary int);
create table stud( stud_id int,stud_name varchar(100),course varchar(100),marks int);
select*from college_stud;
select*from empl;
alter table empl add email varchar(150);
alter table empl modify salary decimal;
alter table empl rename column name to empl_name;
alter table empl drop column age;
alter table stud rename to college_stud;
truncate table empl;
drop table college_stud;
drop table empl;

insert into empl (id ,name,age ,dep,salary)values
(1,'ajay',30,'HR',30000),
(2,'ravi',28,'IT',40000),
(3,'sneha',26,'Finance',35000),
(4,'kiran',32,'Marketing',28000),
(5,'Meena',29,'HR',32000);
insert into empl(name,age,dep,salary)values
('arun',27,'IT',45000);
set sql_safe_updates=0;
update empl set salary=50000 where id=3;
update empl set salary=salary*1.10 where dep='HR';
update empl set dep='Finance' where name='ajay';
delete from empl where salary<25000;
select *from empl; 
delete from empl where id=5;

select*from empl;
select name ,salary from empl;
select *FROM empl where dep='IT';
SELECT*FROM empl where salary>40000;
select *from empl where age>25;
select*from empl where name like 'A%';
select*from empl where salary between 30000 and 50000;
select*from empl order by salary asc;
select*from empl order by salary desc;