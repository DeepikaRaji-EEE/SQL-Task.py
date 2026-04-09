Create Database A;
Use A;
CREATE TABLE employees(empno int ,ename varchar(30),job varchar(30),MGR int,hiredate date,salary int,comm int,depno int);
INSERT INTO employees VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800',NULL,'20');
INSERT INTO employees VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600','300','30');
INSERT INTO employees VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250','500','30');
INSERT INTO employees VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975',NULL,'20');
INSERT INTO employees VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250',NULL,'30');
INSERT INTO employees VALUES ('7698','BLAKE','CLARK','7839','1981-05-01','2850',NULL,'10');
INSERT INTO employees VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450',NULL,'10');
INSERT INTO employees VALUES ('7788','SCOTT','ANALYST','7566','1987-04-19','3000',NULL,'30');
INSERT INTO employees VALUES ('7839','KING','TURNER',NULL,'1981-11-17','5000','0','20');
INSERT INTO employees VALUES ('7788','TURNER','SALESMAN','7698','1981-09-08','1500',NULL,'30');
INSERT INTO employees VALUES ('7876','ADAMS','CLERK','7788','1987-05-03','1100',NULL,'30');
INSERT INTO employees VALUES ('7900','JAMES','CLERK','7788','1981-12-03','1500','0','30');
INSERT INTO employees VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500',NULL,'30');
INSERT INTO employees VALUES ('7876','ADAMS','CLERK','7768','1981-12-03','950',NULL,'30');
INSERT INTO employees VALUES ('7902','MILLER','CLERK','7782','1982-01-23','1300',NULL,'10');
select*from employees; 


Select ename,salary*12 from employees where ename='SMITH';
Select ename ,job from employees where Job='clerk';
select ename ,salary from employees where Job='salesman';
select *from employees where salary>=2000;
select * from employees where ename='JONES';
select * from employees where hiredate<'1981-01-01';
Select ename,salary,salary*12 from employees where (salary*12)>=12000;