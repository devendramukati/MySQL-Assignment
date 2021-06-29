#Solution of Queries for problems 51 to 60.


#51) Write a query on the Customers table whose output will exclude all customers with a rating<= 100.00, unless they are located in Rome.

select * from Customers where (rating<=100 and city='Rome') or rating>100;


#52) Find all rows from the customer’s table for which the salesperson number is 1001.

select * from customers where snum=1001;


#53) Find the total amount in orders for each salesperson where their total of amounts are greater than the amount of the largest order in the table.

select * from (select SUM(AMT) AS Total_Amount from orders GROUP BY SNUM) a where a.Total_Amount>(select MAX(AMT) from orders);


#54) Write a query that selects all orders save those with zeroes or NULL in the amount file.

select onum from orders where amt is NULL or amt=0;


#55) Produce all combinations of salespeople and customer names such that the former precedes the latter alphabetically, and the latter has a rating of less than 200.

select s.sname, c.cname, c.rating from Customers c,salespeople s where c.rating<200 group by s.sname,c.cname,c.rating having c.cname>=s.sname;



