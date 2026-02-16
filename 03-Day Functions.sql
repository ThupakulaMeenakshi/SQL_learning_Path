select top 4 * from customer;
select top 3 percent salary
from customer
where salary>10000;
select top 3 percent salary
from customer where customerName='Durga';
select * from customer 
where salary>10000 and rownum>=4;
select top 3 * from customer
where city='Rajahmundry';
select salary 
from customer
where city='Rajahmundry'
limit 2;
select salary 
from customer 
where rownum>=2;
select top 2 *
from customer where city='Rajahmundry';
select top 25 percent*from customer;
use Mydatabase;
create table OrderDetails
(
orderDetailID int,
orderID int,
productID int,
quality int
);
insert into OrderDetails
values
(1,10248,11,12),
(2,10248,42,10),
(3,10248,72,5),
(4,10249,14,9),
(5,10249,51,40);
select * from OrderDetails;
select MIN(quality) as smallestID
from OrderDetails;
select Max(productID) as LargestID
from OrderDetails;
select count(productID) as ID
from OrderDetails;
select avg(productID) as average
from OrderDetails;
select sum(productID) as summation 
from OrderDetails;
select *
from customer
where customerName like'%u%';
select * from OrderDetails where orderID like '10%';
select * from OrderDetails where quality like '1_';
select * from OrderDetails where productID like '_2';
select * from OrderDetails;
select * from customer where customerName like '%i' and postalcode=533122;
select * from customer where  customerName like '%an%' or postalcode=533101;
select * from customer where customerName like '%p%_%_';
select * from customer where customerName like 'D%a';
select * from customer;
select * from customer where customerName like '[sD]%';
select * from customer where Address like '[a-q]%';
select * from customer where postalcode not like '53310%';