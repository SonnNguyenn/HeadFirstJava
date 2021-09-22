create database Order_Form;
use Order_Form;

create table Customer (
custNo int,
custName varchar(20) not null,
custAdd varchar(100),
country varchar(50) default 'Singapore', 
City varchar(50) default 'Singapore',
primary key(custNo)
);
drop table Customer;
describe Customer;
insert into Customer values (9876, 'Billy', '456 High Tower St', 'HongKong', 'China');
insert into Customer(custNo, custName, custAdd) values (9877, 'Kimmy', '25 Paya Lebar St'),
													   (9878, 'Claire', '77 Clark Quay St'),	
													   (9879, 'Jack', '155 Wikie Edge St'),
													   (9880, 'Kate', '53 Selegie St'),
                                                       (9881, 'Katty', '86 Orchard Road'), 
                                                       (9882, 'Simon', '162 Paya Lebar Road'), 
                                                       (9883, 'Jake', '45 Woodlands Sq'), 
                                                       (9884, 'Tim', '53 Ubi Road 1'), 
                                                       (9885, 'Sean', '61 International Business Park');
select * from Customer;
delete from Customer;

create table Product (
productNo varchar(4),
Des varchar(20) unique,
unitPrice varchar(100),
primary key(productNo)
);
describe Product;
insert into Product values ('A123', 'Pencil', '$3.00'),	
						   ('B234', 'Eraser', '$1.50'),
						   ('C345', 'Sharpener', '$8.00'), 
						   ('D678', 'Ruler', '$2.00'),
						   ('E910', 'Board', '$3.00'),
                           ('F112', 'Scissor', '$5.00'), 
                           ('H113', 'Pin', '$1.00'),
                           ('J114', 'Notebook', '$5.00'),
					       ('K115', 'Sticky Note', '$2.00'),
                           ('L116', 'Glue', '$1.00');
select * from Product;
drop table Product;

create table OrderQuantity (
orderNo int,
productNo varchar(4),
quantity int,
primary key(orderNo, productNo)
);
describe OrderQuantity;
insert into OrderQuantity values (1234, 'A123', 100), 
								 (1234, 'B234', 200), 
                                 (1234, 'C345', 5), 
                                 (1235, 'E910', 150),
                                 (1236, 'D678', 50), 
                                 (1236, 'C345', 200), 
                                 (1237, 'A123', 250), 
                                 (1238, 'J114', 40),
                                 (1239, 'H113', 400),
                                 (1240, 'F112', 50),
                                 (1241, 'K115', 100),
                                 (1242, 'L116', 300),
								 (1243, 'F112', null);
                                 
select * from OrderQuantity;                                 
drop table OrderQuantity;
create table OrderTable (
orderNo int,
orderDate date,
custNo int, 
primary key(orderNo),
foreign key(custNo) references Customer(custNo)
); 
insert into OrderTable values (1234, '1998-04-11', 9876),
							  (1235, '1998-04-23', 9877), 
                              (1236, '1998-05-01', 9878),
                              (1237, '1998-05-11', 9879),
                              (1238, '1998-05-15', 9880),
                              (1239, '1998-05-16', 9881),
                              (1240, '1998-05-17', 9882),
                              (1241, '1998-05-18', 9883),
                              (1242, '1998-05-19', 9884),
                              (1243, null, 9885);
select * from OrderTable;
describe OrderTable;
drop table OrderTable;

select custNo, custName -- Projection, select specific columns from table
from Customer;

select *
from OrderQuantity
where orderNo = 1234;

select *
from OrderTable
where orderDate is Null;

select productNo as 'Number of Product'
from Product;

select concat (City, ', ' , Country) as 'Location'
from Customer;

-- Comparison Operator
select City, Country  -- select City and Country column
from Customer -- from Customer table
where Country != 'Singapore'; 

select *  -- select all columns
from Product -- from Product table
where Des in ('Ruler', 'Scissor', 'Pin'); -- where condition of the specific column matches specific values.
