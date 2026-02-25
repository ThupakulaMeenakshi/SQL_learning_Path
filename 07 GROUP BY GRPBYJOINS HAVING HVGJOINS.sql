//07 Day 
//GROUP BY CLAUSE:it is used with aggregate function such as (count,avg,sum,min,max) to group the resultant set by two or more columns
syntax:
	select aggregate_function(column_name(s))
	from table_name
	where condition
	group by column_name(s)
	order by column_name(s);
example1:
select*from suppliers;
select*from customers;
select count(supplierName),city
from suppliers 
where city='London'
group by city
order by city;
example2:
select * from customer
select avg(salary) as salary,customerID,customerName
from customer
where salary>35000
group by customerID,customerName
order by customerID;
//GROUP BY with JOINS
//FULL join
select count(customer.customerID) as TotalID,customer.customerName,OrderDetails.orderID,OrderDetails.orderDetailID
from customer
FULL OUTER JOIN OrderDetails on customer.customerID=OrderDetails.orderDetailID
GROUP BY customer.customerID,customer.customerName,OrderDetails.orderID,OrderDetails.orderDetailID;
select * from OrderDetails;
select*from customer;
//left JOIN
select customer.customerID,customer.customerName,sum(customer.salary) as salary,OrderDetails.orderDetailID,OrderDetails.productID
from customer
left join OrderDetails on customer.customerID=OrderDetails.orderDetailID
group by customer.customerID,customer.customerName,customer.salary,OrderDetails.OrderDetailID,OrderDetails.productID;
//Having clause 
syntax: select column_name(s)
		from table_name
		where condition 
		group by column_name(s)
		having aggregate(column_name)
		order by column_name(s);
example:
	SELECT count(salary) AS salary,customerName,customerID
	FROM customer
	WHERE salary>15000
	GROUP BY customerName,customerID
	HAVING customerID>=5
	ORDER BY customerName ASC;

//HAVING CLAUSE USING INNER JOIN
EXAMPLE:
		SELECT COUNT(customer.customerID) AS CustomerID,customer.customerName,customer.salary,OrderDetails.orderDetailID,OrderDetails.productID
		from customer
		INNER JOIN OrderDetails ON customer.customerID=OrderDetails.orderDetailID
		GROUP BY customer.customerID,customer.customerName,customer.salary,OrderDetails.orderDetailID,OrderDetails.productID
		HAVING AVG(customer.salary)>15000
		ORDER BY customer.customerName DESC;
