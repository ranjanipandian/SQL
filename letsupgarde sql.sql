-- create a database
create database letsupgrade;

-- mention that we are using this database only beacause we may have many databases in our workbench
use letsupgrade;

-- commands
-- DDL - data defintion language- works with structure(create,alter,drop)
-- DML - data manipulation language- works with data(truncate,update,insert,delete)
-- DQL - data query language-viewing the data (select)
-- DCL - data control language-undo things that are need to be deleted
-- or
-- TCL - transaction control language(rollback)

create table buy(id int,
name varchar(20),
price int,quantity int);

-- an datas in one row is been inserted using the ddl command insert 
insert into buy values(1,'iphone',50000,2);
insert into buy values(2,'oneplus',40000,1);
insert into  buy values(3,'vivo',25000,5);
insert into buy  values(4,'samsung',20000,4);
insert into buy  values(5,'redmi',35000,2);

-- entering multiple data at the same time
insert into buy values(6,'nokia',20000,1),(7,'micromax',45000,3); 
 
select *from buy;
 
 -- delete comment is used to delete a particular data or record from the table usinfg a where condition or delete all the datas from the table without deleting the table.
 delete from buy;
 
 -- delete a particular record
 delete from buy where name like'i%';
 
 -- drop comment completely delete the whole structure of the table and the database where no more the database exits.
drop table buy;

-- truncate comment is used to delete all the datas in the table without deleting the structure of the table and the database.
truncate table buy;

-- show the details of one table
desc buy ;

-- show all the tables
show tables;

-- select only particular column in the table
select name,price from buy ;

-- select with particular column using as clause to display that using another name and only for displaying purpose not changed in the table.
select name as firstname,age as adult from users;

-- row filteration

-- where condition using relational operators
select *from buy  where quantity=2;

-- using conditional operator
select *from products where price>=40000 and name='iphone';

-- using between operator
select *from buy  where price between 20000 and 50000;

-- in,not in,like[works as a comparison operator]
select *from buy  where  quantity in(1,5);

select *from buy  where name like('i%');
select *from buy  where name like('%s'); 

-- sorting/oderby
select *from buy  order by price desc;

-- update
update buy set quantity=5 where id=4;

-- aggregate function
 -- count,min,max,avg,sum
 
 select count(*) from buy;

select max(price) from buy;

select min(price) from buy;

select avg(price) from buy;

select sum(price) from buy;

select count(*),max(price) from products;


-- group by
select count(*) from buy group by quantity;
