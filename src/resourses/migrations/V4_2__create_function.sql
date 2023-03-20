delimiter //
create function get_employee(name varchar(45), sername varchar(45)) returns varchar(16) deterministic
begin
    return (
        select e.emp_no
        from employees as e
        join dept_emp as de on e.emp_no = de.emp_no
        where e.first_name = name and
                e.last_name = sername and
                de.to_date = '9999-01-01'
    );
end//
delimiter ;

select * from employees where emp_no = get_employee('Bezalel', 'Simmel');