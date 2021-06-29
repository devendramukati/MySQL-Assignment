#Solution of Queries for problems 21 to 30.


#21) List all the largest orders for October 3, for each salesperson.


select max(amt), snum, odate from Orders group by snum having odate='1996-03-10';


#22) Find all customers located in cities where Serres has customers.


select a.snum, a.sname, b.cname, b.city from Salespeople a, Customers b where a.snum = b.snum and b.snum = 1002;


#23) Select all customers with a rating above 200.

select * from Customers where rating > 200;


#24) Count the number of salespeople currently having orders in the orders table.


select count(distinct snum) AS Number_of_Salespeople from orders;


/* 25) Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name, salesperson’s name and the salesperson’s rate of commission.

Solution: I have solved this query using joins & also used Aliasing for better understanding results related to the given problem statement. */

select c.cname AS Customer_Name, s.comm AS Commission from Customers c join Salespeople s on c.snum=s.snum and s.comm>12;



#26) Find salespeople who have multiple customers.


select snum AS Salespeople_Name, count(snum) AS Number_Of_Customers from Customers group by snum having count(snum)>1;


#27) Find salespeople with customers located in their own cities.


select s.sname AS Salespople_Name, c.cname AS Customer_Name, s.city from Salespeople s join Customers c on s.city = c.city order by city;


#28) Find all salespeople whose name starts with ‘P’ and fourth character is ‘I’.


select sname from Salespeople where sname like 'p__l%'; 


#29) Write a query that uses a subquery to obtain all orders for the customer named ‘Cisneros’. Assume you do not know his customer number.


select onum AS Order_Number from Orders where snum = (select snum from Customers where cname = 'Cisneros');


#30) Find the largest orders for Serres and Rifkin.


select a.sname AS Salespeople_Name, max(c.amt) as Amount from Salespeople a, Customers b, Orders c where a.snum=b.snum and b.cnum=c.cnum and sname='serres' or sname='rifkin' group by a.snum;

						
					/* End of third script */ 
