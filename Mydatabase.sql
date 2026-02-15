create database Mydatabase;
use Mydatabase;
create table customer
(
customerID int,
customerName varchar(20),
salary float,
Address varchar(50),
city varchar (30),
postalcode int,
country varchar(20)
);
select *from customer;
select customerID,customerName,salary 
from customer;
insert into customer(customerID, customerName, salary, Address,city, postalcode, country)
values
(1,'sam',45000,'lakshmivarapu pet','Rajamundry',533121,'india'),
(2,'Durga',51000,'Rajendranagar','Rajahmundry',533101,'india'),
(3,'pavani',35000,'Muggupet','rajahmundry',533122,'india');
select * from customer;
select customerID,customerName,salary from customer;
select distinct country from customer;
select distinct customerName, postalcode from customer;
select count(distinct postalcode) from customer;
select customerID,customerName,Address,postalcode,salary,city,country
from customer
where salary<>10000;
select * from customer
where salary<>12000;
select * from customer 
where salary between 10000 and 40000;
select * from customer
where salary in(35000,51000);
select *from customer
where customerName='Durga';
select *from customer 
where customerID<>4;
select * from customer where customerID>2;
select *from customer where customerID<3;
select * from customer where customerID>=3;
select * from customer where customerID<=3;
select * from customer where customerID between 1 and 2;
select * from customer where customerID in(1,3);
select * from customer where customerName in('sam','Durga','pavani');
select *from customer
where customerName in ('sam','Durga')
and salary>=35000
select * from customer;
select * from customer 
where salary>35000 and customerID=2;
select * from customer
where customerID>2 or salary>40000;
select * from customer 
where not customerID=2;
select * from customer 
where country='india' and address='Rajendranagar';
select * from customer
where customerID=2 or address='lakshmivarapu pet';
select * from customer
where not customerName='sam';
select * from customer
where customerName='Durga' and (salary>30000 or salary<60000);
select *from customer
order by postalcode;
select * from customer order by salary asc;
select * from customer order by postalcode,salary, customerID,customerName desc;
select * from customer order by postalcode ASC, salary DESC;
insert into customer
values 
(4,'Mahima',48000,'lalacheruvu','Rajahmundry-rural',533123,'india'),
(5,'Sham',36000,'Diwancheruvu','Rajahmundry-rural',533118,'india'),
(6,'Sravya',16000,'prakashnagar','Korukonda',533131,'india');
select * from customer;
insert into customer(customerID,customerName,salary)
values(7,'Harika',18000);
update customer
set customerID=8,customerName='Likitha',salary=19000,Address='Devichowk',city='Kakinada',postalcode=501156,country='india'
where customerID=4;
select top 4 * from customer
update customer
set customerID=4,customerName='Sai',salary=15000,Address='AVA road',city='Rajhmundry',postalcode=511201,country='india';
delete from customer;
delete from customer 
where customerName='Harika'or salary=16000;
select * from customer;
select top 4 * from customer;
select top 3 percent salary
from customer
where salary>10000;