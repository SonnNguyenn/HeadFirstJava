create table student (
	student_id int auto_increment, -- auto_increment; (constraint): auto increase the student id                                                         
    studentName varchar(20) not null, -- name cannot have no values 
    major varchar(20), -- unique not duplicate -- default 'undecided', (constraint): if major is not inserted any values, it will show 'undecided'
    primary key(student_id)
    );
select * from student;
insert into student values(1, 'Jack', 'Biology'); -- add values into column
insert into student values(2, 'Kate', 'Sociology');
insert into student values(3, null, 'Chemistry'); -- error: name cannot be null
insert into student values(4, 'Jack', 'Biology'); -- error: duplicate entry
insert into student values(5, 'Mike', 'Computer Science');
-- insert into student(student_id, studentName) values(2, 'Kate', 'Sociology'); -- can select specific column to add values (student_id, name)
insert into student(studentName, major) values('Jack', 'Biology'); 
insert into student(studentName, major) values('Kate', 'Sociology');
insert into student(studentName, major) values('Claire', 'Chemistry');
insert into student(studentName, major) values('Jack', 'Biology'); 
insert into student(studentName, major) values('Mike', 'Computer Science');

update student 
set major = 'Bio' -- set major = 'Computer Science'
where major = 'Biology'; -- where student_id = 4 or where name = something

update student 
set major = 'Bio-Chemistry'
where major = 'Bio' or major = 'Chemistry'; -- use or to select multiple conditions

update student 
set studentName = 'Tom', major = 'undecided' -- use comma (,) and column to apply multiple set values
where student_id = 1;

delete from student
where student_id = 5;

delete from student
where studentName = 'Tom' or major = 'undecided';


describe student; -- show the data inside student table


drop table student;	-- drop the table





alter table student add gpa decimal(3, 2); -- add more column to a table

alter table student drop column gpa; -- drop the specific column





