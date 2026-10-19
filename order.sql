create database TCL;
use TCL;

create table orders(order_id int primary key,customer_name varchar(100),status varchar(50));
desc orders;
set autocommit=0;
start transaction;

update orders set customer_name = 'Tanu' where order_id = 101;

Rollback;

select * from orders;

insert into orders values(101,'Raj','Pending');
insert into orders values(102,'Meena','Pending');
insert into orders values(103,'Sanu','Pending');
commit;
update orders set customer_name = 'Rutuja' where order_id = 102;
Rollback;
delete from orders where order_id = 103;

insert into orders values(104,'Shruti','Pending');
insert into orders values(105,'Bhoomi','Pending');

savepoint sp1;

update orders set status = 'Shipped' where order_id = 105;
savepoint sp2;

rollback to sp1;

rollback to sp2;



