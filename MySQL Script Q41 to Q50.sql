#Solution of Queries for problems 41 to 50.


#41) Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.00.

select a.amt, a.cnum, b.rating, b.snum, c.sname, c.comm, a.amt*c.comm AS Salesperson_Commission from Orders a, Customers b, Salespeople c where a.cnum = b.cnum and b.snum = c.snum and b.rating > 100;


#42) Count the customers with ratings above SanJose’s average.

select count(city) from Customers where rating >(select avg(rating) from customers where city='SanJose');


#43) Find all salespeople that are located in either Barcelona or London.

select sname AS Salespeople_Name from Salespeople where city='Barcelona' or city='London';


#44) Find all salespeople with only one customer.

select a.sname AS Salespeople_Name, a.snum from salespeople a,(select snum,count(*) as cust_count from customers group by snum having cust_count=1) b where a.snum=b.snum;


#45) Write a query that joins the Customer table to itself to find all pairs or customers served by a single salesperson.


#46) Write a query that will give you all orders for more than $1000.00.

select onum from orders where amt>1000;


#47) Write a query that lists each order number followed by the name of the customer who made that order.

select Orders.onum AS Order_Number, Customers.cname AS Customer_Name from Customers, Orders where Customers.cnum = Orders.cnum;


#48) Write a query that selects all the customers whose ratings are equal to or greater than ANY(in the SQL sense) of ‘Serres’.

SELECT * FROM Customers WHERE RATING >=( select MAX(RATING) from customers JOIN salespeople where customers.SNUM = 
salespeople.SNUM AND salespeople.SNAME ='Serres'GROUP BY customers.SNUM);


#49) Write two queries that will produce all orders taken on October 3 or October 4.

select * from orders where odate='1990-03-10' or odate='1990-04-10';


#50) Find only those customers whose ratings are higher than every customer in Rome.

select * from Customers where rating>(select max(rating) from customers where city='Rome');
