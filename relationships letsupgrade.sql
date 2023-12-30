create database relationships;

 create table departments
 (id int primary key auto_increment,name varchar(20)not null);
 
 insert into departments(name)values('sales'),('HR'),('marketing'),('it');
 
 create table employee
 (id int primary key auto_increment,name varchar(20) not null,salary int,did int,foreign key(did)references department(id));
 
 insert into employee(name,salary,did)values('vijay',2399,1),('ranj',4589,3),('anu',2311,4),('pandi',7610,2);
 insert into employee(name,salary,did)values('suresh',5779,1);
 
 
 select *from departments order by id asc;
 
 select *from employee;
 
 create table bank(id int primary key auto_increment,
 acc_no varchar(20) unique not null,bank_name varchar(20) not null,
 iff int,foreign key(iff) references employee(id));
 
insert into bank(acc_no,bank_name,iff)values(543290,'tycde',3);
insert into bank(acc_no,bank_name,iff)values(6789,'fgjko',2);
insert into bank(acc_no,bank_name,iff)values(1930,'wqkol',1);
insert into bank(acc_no,bank_name,iff)values(9290,'vhoap',4);

 select *from bank;
 
 -- innner join:
 select *from departments
 inner join employee on departments.id=employee.did;
 
 -- left join: 
 -- no need to mention the large name of column 
 -- but you can create an object for that column 
 -- which can be used for further purpose 
 
 select *from departments d left join
 employee e on d.id=e.did;
 
 -- right join:
 select *from departments d right join 
 employee e on d.id=e.did;
 
 -- cross join:
 select *from departments cross join employee;
 
 -- equi join:
 
 select *from departments d,employee e
 where d.id=e.did;
 
 select *from departments d,employee e
 where d.id=e.did and d.name='sales';
 
 
 