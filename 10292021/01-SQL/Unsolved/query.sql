-- Select all the employees who were born between January 1, 1952 and December 31, 1955 and their titles and title date ranges
-- Order the results by emp_no
select employees.emp_no, birth_date, first_name, last_name, titles.title, titles.from_date, titles.to_date
from employees
join titles on employees.emp_no=titles.emp_no
where birth_date between '1952-01-01' and '1955-12-31'
order by employees.emp_no asc

-- Select only the current title for each employee
with about_retire_emp as (
	select employees.emp_no, first_name, last_name, titles.title, titles.from_date, titles.to_date
	from employees
	join titles on employees.emp_no=titles.emp_no
	where birth_date between '1952-01-01' and '1955-12-31'
	order by employees.emp_no asc)

select emp_no, first_name, last_name, title
from about_retire_emp
where to_date = '9999-01-01'

-- Count the total number of employees about to retire by their current job title
with about_retire_emp as (
	select employees.emp_no, first_name, last_name, titles.title, titles.from_date, titles.to_date
	from employees
	join titles on employees.emp_no=titles.emp_no
	where birth_date between '1952-01-01' and '1955-12-31'
	order by employees.emp_no asc)

select count(title), title
from
	(select emp_no, title
	 from about_retire_emp
	 where to_date = '9999-01-01') as foo
group by title
order by count(title) desc

-- Count the total number of employees per department
select departments.dept_name, count(foo.emp_no) as emp_count
from
	(select emp_no, dept_no
	 from dept_emp
	 where to_date = '9999-01-01') as foo
join departments on departments.dept_no=foo.dept_no
group by dept_name
order by emp_count desc

-- Bonus: Find the highest salary per department and department manager
with
dept_manager_table as (
	select foo.dept_no, departments.dept_name, concat(employees.first_name, ' ', employees.last_name) as dept_manager_name
	from 
		(select * from dept_manager
	 	where to_date = '9999-01-01') as foo
	join departments on departments.dept_no=foo.dept_no
	join employees on employees.emp_no=foo.emp_no),
max_salary_dept as (
	select dept_emp.dept_no, max(salaries.salary) as highest_salary
	from salaries
	join dept_emp on salaries.emp_no=dept_emp.emp_no
	group by dept_emp.dept_no)
select dept_name, dept_manager_name, max_salary_dept.highest_salary
from dept_manager_table
join max_salary_dept on dept_manager_table.dept_no=max_salary_dept.dept_no
order by highest_salary desc
