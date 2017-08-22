select * from cust;

create table if not exists `cust`(
	`cust_id` int auto_increment primary key,
    `first_name` varchar(40) not null unique,
    `last_name` varchar(40) not null,
    `age` int null,
    `city` varchar(20) not null);

insert into cust values (NULL, 'Varun','Arur',30,'Seven Hills'),
						(NULL, 'Rajat','Kini',29,'San Souci'),
						(NULL, 'Shilpa','Bhat',28,'Seven Hills'),
                        (NULL, 'Abdul','Furkhan',31,'Blacktown'),
                        (NULL, 'Shaitha','Khannum',28,'Blacktown'),
                        (NULL, 'Avakash','Chand',33,'Hurstville');

select concat(first_name," ",last_name) as 'Name' from cust;

alter table `cust` modify first_name varchar(30) unique not null;

select * from cust;

select city, count(city) from cust group by city;

describe cust;

insert into cust values (NULL,'Minki','Dinki',NULL,'Bangalore');

alter table cust
add column sex enum('M','F') not null;

update cust set last_name = 'Kumar' where cust_id = 7;


select * from cust where age = (select max(age) from cust);

select age from (select distinct age from cust order by age desc limit 2) result
order by age limit 1;

select count(age) from cust group by age;

delete from cust where cust_id = null;
select * from cust;

alter table cust
add column ts timestamp not null;

alter table cust
modify column sex enum('M','F','U') default 'U' null;

insert into cust(cust_id,first_name,last_name,age,city) values (NULL,'Pinki','Pinki',NULL,'Bangalore');
describe cust

create table Track (
	_id int primary key auto_increment,
	username varchar(50) not null,
    case_id varchar(50) not null,
    box_id varchar(50) not null,
    start_time varchar(50) not null,
    finish_time varchar(50) not null,
    elapsed varchar(50) not null);
    
INSERT INTO TRACK VALUES(null,'varun','SDR12345','12','01-Aug-17 9:49:36 PM','01-Aug-17 9:49:36 PM','00:00:00.4895670');

