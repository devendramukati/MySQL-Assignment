#Solution of Queries for problems 11 to 20

#11) Find all the customers in SanJose who have a rating above 200.

select * from Customers where CITY = 'SanJose' and rating >= 200;

#12) List the names and commissions of all salespeople in London. 

select SNAME, COMM, CITY from Salespeople where CITY = 'London';

#13) List all the orders of Salesperson Motika from the orders table

select Salespeople.SNAME, Orders.ONUM, Orders.AMT from Salespeople, Orders, Customers where Salespeople.SNUM = Customers.SNUM and Customers.CNUM = Orders.CNUM and SNAME = 'Motika';

#14) Find all customers who booked orders on October 3. 

select * from orders where ODATE='1990-03-10';

#15) Give the sums of the amounts from the Orders table, grouped by date, eliminating all those dates where the SUM was not at least 2000 above the maximum Amount.

select ODATE, SUM(AMT) as CountBigOrders from Orders group by ODATE;

#16) Select all orders that had amounts that were greater than at least one of the orders from October 6. 

# select * from Orders where AMT > AMT(ODATE='1990-06-10') order by CNUM;

#17) Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300. 

select sname, snum from Salespeople where exists(select rating from Customers where rating=300);

#18) Find all customers whose cnum is 1000 above the snum of Serres.

select Customers.cnum, Customers.cname, Salespeople.snum, Salespeople.sname from Customers, Salespeople where Salespeople.snum + 1000 = Customers.cnum;

#19) Give the salespeople’s commissions as percentages instead of decimal numbers.

select sname,comm*100 as commision from Salespeople;


#20) Find the largest order taken by each salesperson on each date, eliminating those Maximum orders, which are less than 3000.


select Salespeople.sname, Orders.odate, Orders.onum, Orders.amt from Customers, Salespeople, Orders where Customers.snum = Salespeople.snum and Customers.cnum = Orders.cnum and amt > 3000;
