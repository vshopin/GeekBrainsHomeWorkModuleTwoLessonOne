delimiter //
create procedure lay_off_an_employee(in num int)
begin
  start transaction;
  update salaries set to_date = curdate() where
    emp_no = num;
  update titles set to_date = curdate() where
    emp_no = num;
  update dept_emp set to_date = curdate() where
    emp_no = num;
  commit;
end //
delimiter ;

call lay_off_an_employee(10001);
select * from employees.dept_emp where emp_no = 10001;
select * from salaries where emp_no = 10001;
select * from titles where emp_no = 10001;
