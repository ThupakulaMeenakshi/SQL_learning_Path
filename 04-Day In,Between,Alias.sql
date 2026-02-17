//03 day 
select customerID,customerName,salary
from customer
where postalcode in(533121,533101,533118);
insert into customer
values
(08,'Shankar',63000,'Lalacheruvu-cycle colony','Rajahmundry',533106,'india');
select * from customer;
select * from customer where postalcode in (533106);
select * from customer where postalcode in (select postalcode from customer where Address='Lalacheruvu');
select * from OrderDetails;
select * from OrderDetails 
where productID in (11,72,51);
select * from OrderDetails 
where orderDetailID in (select orderDetailID from OrderDetails);
select productID from OrderDetails
where productID between 10 and 80;
select * from OrderDetails
where quality Not between 5 and 10;
select orderDetailID as OrdID
from OrderDetails;
select * from customer as CustomerDetails;
select salary as BasicSalary from customer;
select Address as Area, city as location from customer;
select * from customer;
select	customerID,
		customerName,
		salary,
		Address+','+city+','+
cast(postalcode as varchar(20))
+','+country as ResAD
from customer;