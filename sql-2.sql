use niyati12;
create table worker1(id int not null,
firstname varchar(30),
lastname varchar(30),
department varchar(30),
salary int(30),
primary key (id));

insert into worker1 values(111,"raj","patel","it",92929);
insert into worker1 values(201,"kiran","patel","it",23455);
insert into worker1 values(3,"shobha","shah","sales",2345);
insert into worker1 values(14,"mehul","chokshi","accounts",20933);
insert into worker1 values(51,"somi","thakkar","it",92882);
insert into worker1 values(699,"kiran","raj","sales",78828);
insert into worker1 values(199,"ranbir","sheth","sales",78828);


select * from worker1;

select firstname,salary as maxsalary ,worker1.department from
(select department,max(salary) as totalsalary from worker1 group by department) as fil
inner join worker1 on fil.department=worker1.department 
where totalsalary=salary;

SELECT locate('a', 'Amitabh') AS MatchPosition;

select substr(firstname,1,3) as First_three from worker;



