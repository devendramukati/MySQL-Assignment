#Solution of Queries for problems 31 to 40.


#31) Sort the salespeople table in the following order: snum, sname, commission, city. 

select snum, sname, comm, city from Salespeople;


#32) Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range.

select cname from Customers where cname between 'A' and 'G' order by cname asc;


#33) Select all the possible combinations of customers you can assign.

select c.cname, s.sname from Customers c join Salespeople s on c.snum=s.snum;


#34) Select all orders that are greater than the average for October 4.

select amt AS Amount from Orders where amt > (select avg(amt) from Orders where odate in (select odate from orders group by odate having odate='1990-04-10'));


#35) Write a select command using correlated subquery that selects the names and numbers of all customers with ratings equal to the maximum for their city.

select cnum, cname AS Customer_Name, rating from Customers where rating >= (select max(rating) from Customers); 


#36) Write a query that totals the orders for each day and places the results in descending order.

select sum(amt) AS Total_Orders_Per_Day from orders group by odate order by sum(amt) desc;


#37) Write a select command that produces the rating followed by the name of each customer in SanJose.

select cname AS Customer_Name, city, rating from Customers where city='SanJose';


#38) Find all orders with amounts smaller than any amount for a customer in SanJose.

select onum AS Order_Number, amt AS Amount from orders where amt <(select max(amt) from orders where amt in(select orders.amt from customers,orders where customers.cnum=orders.cnum and customers.city='SanJose'));


#39) Find all orders with above average amounts for their customers.

select a.cname AS Customer_Name, b.amt AS Amount from Customers a, Orders b where a.cnum = b.cnum and amt> (select avg(amt) as amt from Orders) group by cname;


#40) Write a query that selects the highest rating in each city.

select city, max(rating) AS Highest_Rating from Customers group by city;


                                            /* End of MySQL Script */
