select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees e
left join salaries s 
on e.emp_no = s.emp_no;

select first_name, last_name, hire_date
from employees
where hire_date like '%1986';

select e.first_name, e.Last_name, e.emp_no, d.dept_name, m.dept_no
from dept_manager m
full join departments d
on m.dept_no = d.dept_no 
left join employees e
on m.emp_no = e.emp_no;

select de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
left join employees e
on e.emp_no = de.emp_no
full join departments d
on d.dept_no = de.dept_no;

select first_name, last_name, sex
from employees
where first_name like 'Hercules'
and last_name like 'B%';





select e.emp_no, e.last_name, e.first_name
from employees e
right join dept_emp d
on e.emp_no = d.emp_no
where dept_no like 'd007';



select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
left join employees e
on e.emp_no = de.emp_no
full join departments d
on d.dept_no = de.dept_no
where de.dept_no = 'd007' 
or de.dept_no = 'd005';


select count(last_name), last_name
from employees
group by last_name
order by count(last_name) desc;
