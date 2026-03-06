create database employees;
use employees;
create table info (id int primary key , name varchar(50),Age int, department varchar(50),salary int);
insert into info value(1, 'Arun', 28, 'HR', 30000);
insert into info value(2, 'Bala', 24, 'IT', 45000);
insert into info value(3, 'Charan', 30, 'Finance', 50000);
insert into info value(4, 'Anitha', 26, 'IT', 42000);
insert into info value(5, 'Divya', 23, 'HR', 28000);
insert into info value(6, 'Eshwar', 35, 'Finance', 60000);
insert into info value(7, 'Ajay', 29, 'IT', 38000);
insert into info value(8, 'Kiran', 22, 'Marketing', 25000);
insert into info value(9, 'Meena', 31, 'HR', 52000);
insert into info value(10, 'Aravind', 27, 'Finance', 47000);
select*from info ;

select name,salary from info;
select *from info where department= 'HR';
select *from info where salary>=30000;
select *from info order by salary ASC;
select *from info order by salary desc;

select *from info where age>25;
select* from info where department='IT' and salary>40000;
select* from info where name like 'A%';
select* from info where salary between 25000 and 50000;
select* from info where department='HR' or department='finance';





