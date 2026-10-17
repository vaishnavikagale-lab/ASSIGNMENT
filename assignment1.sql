create database assignment1;
use assignment1;

-- Create the following tables. (Primary Keys are underlined)
-- Employee ( emp_id ,emp_name, City, bdate)
-- Investor ( inv_no, inv_name, inv_date, inv_amt, emp_id)
-- Create a Primary key constraint on emp_id in the Employee table and inv_no in the Investor table.

create table Employee(emp_id int primary key,emp_name varchar(20),City varchar(20),bdate date);
create table Investor(inv_no int primary key,inv_name varchar(20),inv_date date,inv_amt int,emp_id int);

select * from Employee;
select * from Investor;

insert into Employee values(1,"Akansha","Sangli","2004-12-12");
insert into Employee values(2,"Anjali","Satara","2005-11-11");
insert into Employee values(3,"Pooja","Pune","2006-10-10");
insert into Employee values(4,"Rutuja","Warje","2007-09-09");
insert into Employee values(5,"Archana","Kolhapur","2008-08-08");

insert into Investor values(101,"Vaishnavi","2000-12-01",5000,1);
insert into Investor values(102,"Shruti","2001-11-02",6000,2);
insert into Investor values(103,"Manali","2002-10-03",7000,3);
insert into Investor values(104,"Pragati","2003-09-04",8000,4);
insert into Investor values(105,"Tapasvi","2004-08-05",9000,5);

alter table Employee add column Age int;
alter table Employee add column Salary int;
alter table Employee add constraint fk_chk check(Age<=50 and Salary>=10000);
desc Employee;
show create table Employee;

alter table Investor add column Age int;

alter table Investor modify inv_name text;
show create table Investor;

alter table Employee rename column emp_id to e_id;

update Employee set city = "Nagpur" where e_id=4;

delete from Investor where inv_no=105;

alter table Investor drop column Age;

alter table Employee drop constraint fk_chk;

alter table Investor add foreign key(emp_id) references Employee(e_id);

select e_id,emp_name,city,bdate from Employee;

rename table Employee to emp;
show create table emp;

truncate table Investor;

drop table Investor;
drop table emp;