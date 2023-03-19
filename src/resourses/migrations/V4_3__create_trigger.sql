delimiter //
create trigger tr before insert on salaries
    for each row
begin
    set NEW.salary = NEW.salary + 10000;
end//
delimiter ;

insert into salaries(emp_no, salary, from_date, to_date)
values (10010, 10000, curdate(), '9999-01-01');

select * from salaries where emp_no = 10010;