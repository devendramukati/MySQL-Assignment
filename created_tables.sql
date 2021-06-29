/* In this script I have created three tables Salespeople, Customers & Orders. */

#drop the database if exists

DROP DATABASE IF EXISTS hotwax;    

#create a new database 'hotwax'

create database hotwax;

#use database 'hotwax'

use hotwax;

#create - a DDL command for creating tables 

CREATE TABLE Salespeople(
SNUM INT(10) PRIMARY KEY, SNAME VARCHAR(25), CITY VARCHAR(25), COMM INT(10)
); 

CREATE TABLE Customers(
CNUM INT(10) PRIMARY KEY, CNAME VARCHAR(25), CITY VARCHAR(25), RATING INT(10), SNUM INT(10)
);

CREATE TABLE Orders(
ONUM INT(10) PRIMARY KEY, AMT FLOAT(10,4), ODATE DATE, CNUM INT(10), SNUM INT(10),
CONSTRAINT fkOfCNUM FOREIGN KEY(CNUM) REFERENCES Customers(CNUM),
CONSTRAINT fkOfSNUM FOREIGN KEY(SNUM) REFERENCES Salespeople(SNUM)
);

#insert command in MySQL - a DML command for inserting the data in rows in a table

#Inserting values in Salespeople table. . .

insert into Salespeople values(1001, 'Peel', 'London', 12); 
insert into Salespeople values(1002, 'Serres', 'SanJose', 13);
insert into Salespeople values(1004, 'Motika', 'London', 11);
insert into Salespeople values(1007, 'Rifkin', 'Barcelona', 15);
insert into Salespeople values(1003, 'AxelRod', 'New York', 10);
insert into Salespeople values(1008, 'Fran', 'London', 25);

#Inserting values in Customers table. . .

insert into Customers values(2001, 'Hoffman', 'London', 100, 1001);
insert into Customers values(2002, 'Giovanni', 'Rome', 200, 1003);
insert into Customers values(2003, 'Liu', 'SanJose', 200, 1002);
insert into Customers values(2004, 'Grass', 'Berlin', 300, 1002);
insert into Customers values(2006, 'Ceimens', 'London', 100, 1001);
insert into Customers values(2008, 'Cisneros', 'SanJose', 300, 1007);
insert into Customers values(2007, 'Pereira', 'Rome', 100, 1004);

#Inserting values in Orders table. . .

insert into Orders values(3001, 18.69, '90-03-10', 2008, 1007);
insert into Orders values(3003, 767.19, '90-03-10', 2001, 1001);
insert into Orders values(3002, 1900.10, '90-03-10', 2007, 1004);
insert into Orders values(3005, 5160.45, '90-03-10', 2003, 1002);
insert into Orders values(3006, 1098.16, '90-03-10', 2008, 1007);
insert into Orders values(3009, 1713.23, '90-04-10', 2002, 1003);
insert into Orders values(3007, 75.75, '90-04-10', 2004, 1002);
insert into Orders values(3008, 4723.00, '90-05-10', 2006, 1001);
insert into Orders values(3010, 1309.95, '90-06-10', 2004, 1002);
insert into Orders values(3011, 9891.88, '90-06-10', 2006, 1001);