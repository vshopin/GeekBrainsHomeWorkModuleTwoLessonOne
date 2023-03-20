explain
select count(employees.emp_no) as emp_count, departments.dept_name as department, sum(salaries.salary) as money
from employees
  right join dept_emp on employees.emp_no = dept_emp.emp_no
  right join departments on dept_emp.dept_no = departments.dept_no
  left join salaries on employees.emp_no = salaries.emp_no
group by departments.dept_name
order by money desc;

/*
+----+-------------+-------------+------------+--------+----------------+-----------+---------+-------------------------------+-------+----------+----------------------------------------------+
| id | select_type | table       | partitions | type   | possible_keys  | key       | key_len | ref                           | rows  | filtered | Extra                                        |
+----+-------------+-------------+------------+--------+----------------+-----------+---------+-------------------------------+-------+----------+----------------------------------------------+
|  1 | SIMPLE      | departments | NULL       | index  | dept_name      | dept_name | 42      | NULL                          |     9 |   100.00 | Using index; Using temporary; Using filesort |
|  1 | SIMPLE      | dept_emp    | NULL       | ref    | dept_no        | dept_no   | 4       | employees.departments.dept_no | 41446 |   100.00 | Using index                                  |
|  1 | SIMPLE      | employees   | NULL       | eq_ref | PRIMARY        | PRIMARY   | 4       | employees.dept_emp.emp_no     |     1 |   100.00 | Using index                                  |
|  1 | SIMPLE      | salaries    | NULL       | ref    | PRIMARY,emp_no | PRIMARY   | 4       | employees.employees.emp_no    |     9 |   100.00 | NULL                                         |
+----+-------------+-------------+------------+--------+----------------+-----------+---------+-------------------------------+-------+----------+----------------------------------------------+
4 rows in set, 1 warning (0.00 sec)

 */