-- degree == no. of columns
-- cardinality == no. of rows
use university;
describe students; -- shows schema
show columns from students; --
select * from students; -- shows columns data

alter table students add primary key (std_id);
-- DMC:
	-- 	insert into 
	-- 	delete
	-- 	update
    
    delete from students 
    where std_id = 1;-- deletes all like that satisfy this
    
    delete from students 
    where std_id = 1
    limit 1; -- deletes only 1... row that satisfy where
    -- limit effect the number of rows said after it
    
    
    -- remove / add safe mode
			set sgl_safe_updates = 1 ;
			set sgl_safe_updates = 0 ;
            
select * from students limit 100,400; -- skips first 100 from a range of 500 pulls only 400

alter table students drop primary key;

-- no null means == NOT NULL CONSTRAINT

-- alter to change existing schema
alter table students modify stdname varchar(10) not null;

alter table students add column age int check(age > 18);

insert into students (std_id, stdname, age) values (3,'asad',20);
insert into students (std_id, stdname, age) values (3,'asad',10); -- check puts a constraint on entire column

update students 
set age = 25
where sdt_id = 1;

update students 
set age = NULL
where age = NULL;

bsai.students
bsai.class ( classname,ClassProctor)

alter table class add column std_int int; -- 
alter table class add foreign key (std_id) refrences students (std_id); --  error if it doesnt exist and if it  is primary key

insert into class  ( classname, classProctor , std_id ) values ('bsai' , 'mansoor',8);

-- select replace is only runtime
-- while replace is permanat in database



-- ##############################################
-- ##############################################
-- check PK
-- add apna naam
-- if primary key -> delete -> insert
-- drop primary key
-- then insert with replace now it will insert into last new row


-- replace ke through inert inot
	nmae fn ln
	address
    city
    state
    contry 
    phone
-- pk
drop pk
insert same data again with replae staement

