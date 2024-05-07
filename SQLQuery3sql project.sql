create database danishsql
use danishsql

create table tb1(
empno char(4) primary key,
empname varchar(20),
salary int,
address varchar(30));

insert into tb1 values('r001','dan',34000,'patna');
insert into tb1 values('r002','raju',40000,'patna')
insert into tb1 values('r003','shyam',50000,'patna')
insert into tb1 values('r004','rajiv',84000,'muzzafarpur')
insert into tb1 values('r005','parvez',84000,'arrah')


select * from tb1

select * from tb1 where empno='r002';
select * from tb1 where empname like'r%';
select * from tb1 where salary>40000;
select * from tb1 where salary>=40000 and salary<=80000;
select * from tb1 where salary between 40000 and 80000;

-------- AGGregate functions
select max (salary) from tb1;
select min (salary) from tb1;
select sum(salary) from tb1;
select avg(salary) from tb1;
select count(salary) from tb1;

select * from tb1 order by empname asc;
select * from tb1 order by salary desc;

---delete
delete from tb1 where empno='r002'

create table tb2(
empno char(4) primary key,
empname varchar(20),
salary int,
address varchar(30));

insert into tb2 values('r003','shyam',50000,'patna')
insert into tb2 values('r004','rajiv',84000,'muzzafarpur')
select * from tb2

---truncate delete only records
delete from tb1 where empno='r002'

truncate table tb2;
drop table tb2

update tb1 set empname='raj'where empno='r003'
select * from tb1
update tb1 set salary=salary+salary*0.02
update tb1 set salary=salary+salary*0.03 where address='patna'
update tb1 set salary=salary+salary*0.05 where salary<50000

select * from tb1 where address in ('patna','arrah')


------Groupby

create table emptrains
(
employeeno char(4),
trandate datetime,
tranamt float
);
insert into emptrains values('a001','2024-12-12',7899);
insert into emptrains values('a001','2024-12-13',78999);
insert into emptrains values('a001','2024-12-14',78099);
insert into emptrains values('a002','2024-12-12',80899);
insert into emptrains values('a002','2024-12-13',68909);
insert into emptrains values('a002','2024-12-14',98099);
insert into emptrains values('a003','2024-12-14',89000);
insert into emptrains values('a003','2024-12-15',7200);
insert into emptrains values('a003','2024-12-16',7000);

select * from emptrains

select employeeno,sum(tranamt)from emptrains group by employeeno;

select employeeno,sum(tranamt)from emptrains group by employeeno having employeeno='a002';
 


















































