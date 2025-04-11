create table departments (
dept_no varchar not null,
dept_name varchar,
primary key (dept_no)
);

create table dept_emp (
emp_no varchar not null,
dept_no varchar not null,
primary key (emp_no, dept_no)
);

create table dept_manager (
dept_no text not null,
emp_no int not null,
);

create table titles (
title_id varchar not null,
title text,
);

create table salaries (
emp_no int not null,
salary int,
);

create table employees (
emp_no varchar not null,
emp_title_id varchar not null,
birth_date varchar,
first_name varchar,
last_name varchar,
sex varchar,
hire_date varchar,
);

select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from titles;
select * from salaries;
select * from employees;


alter table dept_manager
add primary key (emp_no),
add foreign key (dept_no) references departments(dept_no);

alter table titles
add primary key (title_id);

alter table salaries
add primary key (emp_no);

alter table employees
add primary key (emp_no),
add foreign key (emp_title_id) references titles(title_id);

alter table dept_emp
alter column emp_no type integer
Using emp_no::integer;

alter table employees
alter column emp_no type integer
Using emp_no::integer;

alter table dept_manager
alter column dept_no type varchar
Using dept_no::varchar;







