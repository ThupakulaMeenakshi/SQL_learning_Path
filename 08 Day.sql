//08 Day
select * from customer;
//select into statement 
select * into Rajahmundry
from customer
where city='Rajahmundry';
select * from Rajahmundry;
select customerID,customerName,salary,Address into
RajahmundryResidential from customer
where salary>=35000;
select * from RajahmundryResidential;
select 
customerID,
customerName,
salary,
Address
from Rajahmundry
where salary>35000;
select * from customers;
select * from suppliers;
select * 
into supplierDetails
from suppliers
where country='Mexico';
select * from supplierDetails;
select * from suppliers;
SELECT customers.customerID,customers.customerName
INTO customerDetails
from customers;
select * from customerDetails;
INSERT INTO supplierDetails
SELECT * from suppliers
where postalcode='ECI 4SD';
select * from supplierDetails;
select * from customers;
select * from customerDetails;
INSERT INTO customerDetails(contactName,Address,city,postalcode,country)
select contactName,Address,city,postalcode,country
FROM customers 
INNER JOIN customerDetails
ON customers.customerName=customerDetails.customerName;
select * from customers;
select * from customerDetails;
select * from supplierDetails;
select * from suppliers;
insert into supplierDetails(supplierName,contactName,Address,city)
select suppliers.contactName,suppliers.contactName,suppliers.Address,suppliers.city
from suppliers
where country='USA' or country='Russia';
select * from supplierDetails;
create database studentRecord;
SELECT * FROM SYS.DATABASES;
DROP Database studentRecord;
USE Mydatabase;
use Mydatabase;
select * from sys.databases;