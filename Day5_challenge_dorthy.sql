create database universityDB;
use universityDB;

create table students(
student_id int primary key,
student_name varchar(50),
course_id int);

create table courses(
course_id int primary key,
course_name varchar(50));

insert into students ( student_id , student_name , course_id) values 
(1,'John', 1), (2,'Peter', 3), (3,'Mike', 4),(4,'Betty', 5), (5,'Joe', 2);

insert into courses ( course_id , course_name ) values 
(1, 'IT'),
(2,'CSE'),
(3,'ME'),
(4,'IT'),
(5,'CSE');

select s.student_name, c.course_name from students s inner join courses c on s.course_id = c.course_id;

select s.student_name, c.course_name from students s left join courses c on s.course_id = c.course_id;
select s.student_name, c.course_name from students s right join courses c on s.course_id = c.course_id;

create table employees_working(
emp_id int primary key,
emp_name varchar(50));

insert into employees_working values 
(1, "Akila"),
(2, "Sree"),
(3, "muthu"),
(4, "Jai"),
(5, "Sai");

create table employees_left(
emp_id int primary key,
emp_name varchar(50));

insert into employees_left values
(1, "loka"),
(2, "Sree"),
(3,"sakar"),
(4, "manju"),
(5, "Sai");

select emp_name from employees_working union select emp_name from employees_left;

select emp_name from employees_working union all select emp_name from employees_left;



