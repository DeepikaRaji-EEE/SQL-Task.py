create table emp (id int primary key , name varchar(50),Age int, department varchar(50),salary int);
insert into emp value(6, 'Eshwar', 35, 'Finance', 60000);
insert into emp value(7, 'Ajay', 29, 'IT', 38000);
insert into emp value(8, 'Kiran', 22, 'Marketing', 25000);
insert into emp value(9, 'Meena', 31, 'HR', 52000);
insert into emp value(10, 'Aravind', 27, 'Finance', 47000);
select*from emp;

insert into emp value(1, 'Arun', 27, 'IT', 45000);
set sql_safe_updates=0;
update emp set salary=50000 where id=8;
update emp set salary=salary*1.10 where department='HR';
update emp set department='Finance' where name ='Ajay';
Delete from emp where salary<25000;
set sql_safe_updates=0;
Delete from emp where id=7;

SELECT*FROM emp;
SELECT name,salary from emp;
SELECT*FROM emp where department='IT';
SELECT*FROM emp where salary>40000;
SELECT*FROM emp where age>25;
SELECT*FROM emp where name like'A%';
SELECT*FROM emp where salary between 30000 and 50000;
SELECT*FROM emp order by name Asc;
SELECT*FROM emp order by name desc;
