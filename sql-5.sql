use niyati12;
create table worker3(id int not null,
firstname varchar(30),
lastname varchar(30),
department varchar(30),
salary int(30),
email varchar(255),
primary key (id));

insert into worker3 values(111,"raj","patel","it",92929,'raj432@gmail.com');
insert into worker3 values(201,"kiran","patel","it",23455,'kiranpatel@gmail.com');
insert into worker3 values(3,"shobha","shah","sales",2345,'shobhashah@gmail.com');
insert into worker3 values(14,"mehul","chokshi","accounts",20933,'mehc432@gail.com');
insert into worker3 values(51,"somi","thakkar","it",92882,'somit@gmail.com');

insert into worker3 values(10,"satish","sahani","it",88000,'satishsahani42@gmail.com');
insert into worker3 values(60,"vipul","gandhi","sales",62128,'vgandhi12@gaimil.com');
select * from worker3;

select * from worker3 where firstname not in ("satish","vipul");

select * from worker3 where firstname like '%h' and length(firstname)=6;

select * from worker3 where email like '%@gmail.com';
