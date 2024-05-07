use danish123;

insert into lux(id,empname,city,salary) 
values('1','muskan','patna','8000');

select * from lux

insert into lux(id,empname,city,salary) 
values('1','amir','delhi','6000');

insert into lux(id,empname,city,salary) 
values('2','naina','mumbai','6500');

create table nanocar(
id int,
empname varchar(255),
city varchar(255),
salary int
);
select * from nanocar
insert into nanocar(id,empname,city,salary) 
values('1','iqbal','patna','5500');


insert into nanocar(id,empname,city,salary) 
values('1','muskan','patna','8000');

insert into nanocar(id,empname,city,salary) 
values('2','anil','mumbai','9000');

--------- JOINS
select * from lux inner join
nanocar on lux.id=nanocar.id

select * from lux left join
nanocar on lux.city=nanocar.city

select * from lux right join
nanocar on lux.city=nanocar.city

select * from lux full join
nanocar on lux.salary=nanocar.salary