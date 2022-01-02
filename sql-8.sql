use niyati12;

create table t1(id int(50),username varchar(100));
create table t2(id int(50),username varchar(100));

insert into t1 values(1,"a");
insert into t1 values(2,"b");
insert into t1 values(3,"c");
insert into t1 values(4,"d");
insert into t1 values(5,"e");

insert into t2 values(1,"a");
insert into t2 values(2,"b");
insert into t2 values(3,"c");
insert into t2 values(6,"f");
insert into t2 values(7,"g");
insert into t2 values(8,"h");


select t1.id,t1.username from t1 
inner join
t2 on t1.id=t2.id and t1.username=t2.username;

select * from t2 where t2.id not in
(select t1.id from t1 
inner join
t2 on t1.id=t2.id and t1.username=t2.username);
