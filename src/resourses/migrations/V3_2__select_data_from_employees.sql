select avg(salaries.salary)
    from salaries
    left join employees e on e.emp_no = salaries.emp_no
    left join dept_emp de on e.emp_no = de.emp_no
    left join departments d on d.dept_no = de.dept_no;

select * from employees.employees
    inner join salaries using(emp_no)
    where salary in (select max(salary) from salaries sal where sal.to_date='9999-01-01' );

delete employees from  employees.employees
    inner join salaries using(emp_no)
    where salary in (select max(salary) from salaries sal where sal.to_date='9999-01-01' );

select count(employees.first_name) from employees;

select count(employees.emp_no) as emp_count, departments.dept_name as department, sum(salaries.salary) as money from employees
    right join dept_emp on employees.emp_no = dept_emp.emp_no
    right join departments on dept_emp.dept_no = departments.dept_no
    left join salaries on employees.emp_no = salaries.emp_no
    group by departments.dept_name order by money desc;

