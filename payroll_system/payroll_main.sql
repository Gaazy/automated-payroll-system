#create database payroll_system;
use payroll_system;

create table if not exists employee(
emp_id int auto_increment,
first_name varchar(50),
last_name varchar(50),
mid_init varchar(50),
loc varchar(50),
title_description varchar(50),
start_job datetime,
leave_status varchar(50),

primary key(emp_id)
);

create table if not exists salary(
salary_id int auto_increment,
base_salary int,
pay_basis varchar(20),
regular_gross_paid int,
ot_paid int,
other_pay int,
emp_id int,

primary key(salary_id),
foreign key(emp_id) references employee(emp_id)
);

create table if not exists project(
project_id int auto_increment,
ot_hours int,
regular_hours int,
salary_id int,

primary key(project_id),
foreign key(salary_id) references salary(salary_id)
);

create table if not exists payroll(
payroll_id int auto_increment,
tax int,
allowance int,
salary_paid int,

primary key(payroll_id)
);