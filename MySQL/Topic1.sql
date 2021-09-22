create database My_testDB;
-- drop schema My_testDB;
USE My_testDB;

create table student (
studentID	int,
Fname		varchar(50) NOT NULL,
Lname		varchar(50) NOT NULL,
Email		varchar(100) NOT NULL UNIQUE,
MobileNo	int,
Gender		char(1),
Status		char(2)	DEFAULT 'SG',
PRIMARY KEY (studentID)
);

alter table student	
	add GPA decimal(3,2),
    add Nationality	varchar(20) default 'Singaporean';
    
alter table student 
	modify MobileNo char(8);
    
alter table student
	drop Status;

insert into student
values (123, 'Lina', 'Lim', 'asdf@gmail.com', NULL, 'F', 3.8, 'Singaporean'),
		(124, 'Tom', 'Putt', 'asdsdff@gmail.com', '12312319' , 'M', 2.55, 'Foreigner');
    
update student
set MobileNo = '1234531'
where studentID = 123; 

delete from student
where Fname = 'Tom' and Lname = 'Putt'; 
    
    
    
    
    