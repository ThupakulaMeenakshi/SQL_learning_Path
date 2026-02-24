select A.city,B.city,A.customerName 
from customer as A 
join customer as B on A.city=B.city 
where A.customerName<>B.customerName;
delete from DeliveryPartner
create table suppliers
(
supplierID int,
supplierName varchar(50),
contactName Varchar(50),
Address varchar(50),
city varchar(50),
postalcode varchar(50),
country varchar(50)
);
insert into suppliers
values
(1,'Epstein','charlotte cooper','49 Gilbert St.','London','ECI 4SD','UK'),
(2,'Shekar','Rishab','P.O.Box 78934','New Orleans','70117','USA'),
(3,'John Jacoob','Pandya','707 Oxford Rd.','Ann Arbor','48104','Russia');
select * from suppliers;
select* from customers;
create table customers
(
customerID int,
customerName Varchar(50),
contactName varchar(50),
Address varchar(50),
city varchar(50),
postalcode int,
country varchar(20)
);
insert into customers 
values
(1,'Venkat','Maria','obere str.57','berlin',12209,'Germany'),
(2,'Surya','Ana','Avda.de.la22','Mexico D.F',05021,'Mexico'),
(3,'Anasuya','Antonio','mataderos2131','Mexico D.F',05023,'Mexico');
select * from customers;
select * from suppliers;
select supplierName from suppliers union select customerName from customers;
select supplierID from suppliers
union 
select customerID from customers;
select city from customers 
union 
select city from suppliers;
select supplierID,supplierName,contactName,Address,city,cast(postalcode as varchar(50)) as postalcode,country 
from suppliers
union 
select customerID,customerName,contactName,Address,city,cast(postalcode as varchar(50)) as postalcode,country
from customers
where city='London'
order by city;
select count(customerName),city
from customers 
group by city
order by city;
select* from suppliers;
select count(supplierName),city
from suppliers
group by city;
select count(customerName),city
 from customer
 group by city;