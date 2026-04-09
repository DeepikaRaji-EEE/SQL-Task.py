create database emp;
use emp;
create table emplo(id int,name varchar(100),age int,department varchar(100),
salary int,
joining_date date);
insert into emplo value(1,'Arun',28,'HR',30000,'2025-03-03'),
(2, 'Bala', 24, 'IT', 45000,'2025-02-22'),
(3, 'Charan', 30, 'Finance', 50000,'2025-01-20'),
(4, 'Anitha', 26, 'IT', 42000,'2025-01-13'),
(5, 'Divya', 23, 'HR', 28000,'2025-03-25'),
(6, 'Eshwar', 35, 'Finance', 60000,'2025-02-18'),
(7, 'Ajay', 29, 'IT', 38000,'2025-05-11'),
(8, 'Kiran', 22, 'Marketing', 25000,'2025-02-08'),
(9, 'Meena', 31,'HR', 52000,'2025-03-30'),
(10, 'Aravind', 27, 'Finance', 47000,'2025-04-22');

select *from emplo;
select name ,salary from emplo;
select *from emplo where department='IT';
select*from emplo where salary>40000;
select * from emplo where age<30;

select*from emplo where salary between 30000 and 60000;
select* from emplo where department ='HR' OR  department='Finance';
select * from emplo where name like 'A%';
select * from emplo where name like '%n';
select* from emplo where age!=25;

select*from emplo order by salary asc;
select*from emplo order by salary desc;
select*from emplo order by age ,salary;
select * from emplo order by name asc;

select min(salary) from emplo;
select max(salary) from emplo;
select avg(salary) from emplo;
select sum(salary) from emplo;
select count(*) from emplo;

select department , sum(salary) from emplo  group by department ;
select department , avg(salary) from emplo  group by department ;
select department , count(*) from emplo  group by department ;
select department , max(salary) from emplo  group by department ;
select department , min(salary) from emplo  group by department ;

select department ,sum(salary) from emplo group by department having sum(salary)>100000;
select department ,count(*) from emplo group by department having count(*)>3;
select department ,avg(salary) from emplo group by department having avg(salary)>40000;

select upper(name) from emplo;
select lower(name) from emplo ;
select name,length(name) from emplo;
select substring(name,1,3) from emplo;
select concat(name,'-',department) from emplo ;