create table if not exists country(
	country_id int not null primary key auto_increment,
    country_name varchar(20) not null
    );
    
create table if not exists state(
	state_id int not null primary key auto_increment,
    country_id int not null,
    state_name varchar(20) not null
    );
    
insert into country value (null, 'India'), (null,'Australia'),(null,'USA');

insert into state value (null,1, 'Karnataka'),(null,1,'Tamil Nadu'),(null,1,'Kerala'),(null,1,'Goa'),(null,1,'Punjab'),
						(null,2,'New South Wales'),(null,2,'Queensland'),(null,2,'Victoria'),(null,2,'Western Australia'),(null,2,'South Australia'),
                        (null,3,'Oregon'),(null,3,'Caligornia'),(null,3,'Washington'),(null,3,'New York'), (null,3,'Arizona');
                        
select * from country;
select * from state;

select state.state_id, state.state_name, country.country_name 
	from state left join country on country.country_id=state.country_id
union
select state.state_id, state.state_name, country.country_name 
    from state right join country on country.country_id=state.country_id;

insert into country values (null,'new zealand');

insert into state values (null,4,'North Island');

update state set country_id=5 where state_id=16;

