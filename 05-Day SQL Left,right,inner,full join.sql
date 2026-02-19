05-Day
//SQL JOINS
select * from OrderDetails;
select * from customer;
select OrderDetails.orderID,customer.customerName,OrderDetails.productID
from OrderDetails 
inner join customer on OrderDetails.orderDetailID=customer.customerID;
select * from OrderDetails
inner join customer on OrderDetails.orderDetailID=customer.customerID;
create table DeliveryPartner
(
ShipperID int,
AssignID int,
ShipperName varchar(50),
contactNO int
);
insert into DeliveryPartner
values
(1,10248,'Raghav',93920012),
(2,10248,'Prateek',8956432),
(3,10249,'Keshav',4567899),
(4,10256,'Suraj',7894561);
select * from DeliveryPartner;
select * from OrderDetails;
select * from customer;
insert into OrderDetails
values
(6,10256,63,59);
insert into DeliveryPartner values
(5,10245,'Jashava',7894512),
(6,10246,'Vinod',9846578);
select * from OrderDetails
inner join customer on OrderDetails.orderDetailID=customer.customerID
inner join DeliveryPartner on OrderDetails.orderID=DeliveryPartner.AssignID;
select OrderDetails.productID,OrderDetails.quality,customer.customerName,DeliveryPartner.AssignID,DeliveryPartner.ShipperName,DeliveryPartner.contactNO
from OrderDetails
inner join customer on OrderDetails.orderDetailID=customer.customerID
inner join DeliveryPartner on OrderDetails.orderID=DeliveryPartner.AssignID;
select customer.customerName,customer.Address,customer.city,DeliveryPartner.AssignID,DeliveryPartner.ShipperName from DeliveryPartner
left join customer on DeliveryPartner.ShipperID=customer.customerID;
select * from customer
right join DeliveryPartner on customer.postalcode=DeliveryPartner.ShipperID;
select * from customer
left join DeliveryPartner on customer.customerID=DeliveryPartner.AssignID;
select * from DeliveryPartner
full outer join customer on customer.customerID=DeliveryPartner.ShipperID
order by DeliveryPartner.AssignID ASC;
select * from DeliveryPartner
full outer join customer on customer.postalcode=DeliveryPartner.AssignID;