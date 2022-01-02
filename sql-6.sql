use niyati12;
create table worker4(id int not null,
firstname varchar(30),
lastname varchar(30),
department varchar(30),
salary int(30),
email varchar(255),
joining_date date,
primary key (id));


insert into worker4 values(201,"kiran","patel","it",23455,'kiranpatel@gmail.com','2019-04-18');
insert into worker4 values(3,"shobha","shah","sales",2345,'shobhashah@gmail.com','2014-02-10');
insert into worker4 values(14,"mehul","chokshi","accounts",20933,'mehc432@gail.com','2002-01-2');
insert into worker4 values(51,"somi","thakkar","it",92882,'somit@gmail.com','2014-02-07');

insert into worker4 values(10,"satish","sahani","it",88000,'satishsahani42@gmail.com','2020-02-28');
insert into worker4 values(60,"vipul","gandhi","sales",62128,'vgandhi12@gaimil.com','2004-02-8');
insert into worker4 values(62,"nehal","gandhi","it",627728,'vgandhi12@gaimil.com','2004-02-8');
insert into worker4 values(63,"nehal","gandhi","it",627728,'vgandhi12@gaimil.com','2004-02-8');
select * from worker4;

select * from 
(select * ,
extract(month from joining_date) as mth,
extract(year from joining_date) as yr from worker4) as tf
where tf.yr=2014 and tf.mth=02;

select * from worker4
inner join 
(select *,count(*) from worker4 group by email having count(*)>1) as tf on worker4.email=tf.email;


DELETE w1 FROM worker4 w1  
INNER JOIN worker4 w2   
WHERE  
    w1.id > w2.id AND  
    w1.email = w2.email and
    w1.firstname=w2.firstname and
    w1.department=w2.department and
    w1.salary=w2.salary and
    w1.joining_date=w2.joining_date;  
