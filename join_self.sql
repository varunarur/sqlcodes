create table emp (
	emp_id int primary key not null,
    emp_name varchar(30) not null,
    mng_id int null);

alter table emp modify emp_id int not null auto_increment;

insert into emp values (null,'Varun',2),(null,'Shilpa',1),(null,'Rajat',1),(null,'Abdul',null),(null,'Shinki',1);

select * from emp;

select E.emp_id as `Employee ID`, E.emp_name as `Employee Name`, M.emp_name as `Manager Name`
from emp E inner join emp M
on M.emp_id = E.mng_id;