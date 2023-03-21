explain
select count(employees.emp_no) as emp_count, departments.dept_name as department, sum(salaries.salary) as money
from employees
  right join dept_emp on employees.emp_no = dept_emp.emp_no
  right join departments on dept_emp.dept_no = departments.dept_no
  left join salaries on employees.emp_no = salaries.emp_no
group by departments.dept_name
order by money desc;