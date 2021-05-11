
#Solution of Queries for problems 1 to 10

#1) List all the columns of the Salespeople table.

select * from Salespeople;

#2) List all customers with a rating of 100. 

select * from Customers where rating = 100;

#3) Find the largest order taken by each salesperson on each date. 

select Orders.ONUM, max(Orders.AMT) as LargestOrder, Orders.ODATE, Orders.CNUM, Customers.SNUM from Orders, Customers where Orders.CNUM = Customers.CNUM;

#4) Arrange the Order table by descending customer number. 

select * from Orders order by CNUM desc;

#5) Find which salespeople currently have orders in the order table.

select Orders.ONUM, Orders.AMT, Orders.ODATE, Orders.CNUM, Salespeople.SNUM, Salespeople.SNAME from Orders, Salespeople where Orders.SNUM = Salespeople.SNUM group by Salespeople.SNUM, Orders.ODATE;

#6) List names of all customers matched with the salespeople serving them

select Customers.CNAME, Salespeople.SNAME from Customers inner join Salespeople on Customers.SNUM = Salespeople.SNUM;

#7) Find the names and numbers of all salespeople who have more than one customer.

select Customers.SNUM, Salespeople.SNAME, count(*) as Customer_Count from Customers, Salespeople where Customers.SNUM = Salespeople.SNUM group by Customers.SNUM;

#8) Count the orders of each of the salespeople and output the results in descending order. 

select Customers.SNUM, Salespeople.SNAME, count(*) as Order_Count from Customers, Salespeople, Orders where Orders.CNUM = Customers.CNUM and Customers.SNUM = Salespeople.SNUM group by SNUM;

#9) List the customer table if and only if one or more of the customers in the Customer table are located in SanJose. 

select * from Customers where (select count(*) from Customers where city='SanJose')>=1;

#10) Match salespeople to customers according to what city they live in. 

select Salespeople.SNAME, Customers.CNAME, Customers.CITY from Salespeople, Customers where Salespeople.SNUM = Customers.SNUM and Salespeople.CITY = Customers.CITY;

 




