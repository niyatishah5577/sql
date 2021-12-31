use niyati12;
create table worker(id int not null,
firstname varchar(30),
lastname varchar(30),
department varchar(30),
primary key (id));

insert into worker values(111,"raj","patel","it");
insert into worker values(201,"kiran","patel","it");
insert into worker values(3,"shobha","shah","sales");
insert into worker values(14,"mehul","chokshi","accounts");
insert into worker values(51,"somi","thakkar","it");
insert into worker values(699,"kiran","raj","sales");

select firstname as Woker_Name from worker;
select * from worker;
select distinct department from worker;
SELECT * FROM worker ORDER BY id DESC LIMIT 3
