use niyati12;
create table worker2(id int not null,
firstname varchar(30),
lastname varchar(30),
department varchar(30),
salary int(30),
primary key (id));

insert into worker2 values(111,"raj","patel","it",92929);
insert into worker2 values(201,"kiran","patel","it",23455);
insert into worker2 values(3,"shobha","shah","sales",2345);
insert into worker2 values(14,"mehul","chokshi","accounts",20933);
insert into worker2 values(51,"somi","thakkar","it",92882);
insert into worker2 values(699,"kiran","raj","sales",78828);
insert into worker2 values(199,"ranbir","sheth","sales",78828);
insert into worker2 values(19,"ram","shah","sales",72228);
insert into worker2 values(1990,"birma","sahani","it",88218);
insert into worker2 values(69,"mabir","patel","sales",65828);
insert into worker2 values(190,"brijesh   ","sahani","it",88118);
insert into worker2 values(690,"mabir  ","gandhi","sales",65828);
insert into worker2 values(601,"mir  ","gandhi","sales",88828);


select * from worker2;

DELIMITER //

CREATE PROCEDURE Getnrecords(IN N int(20))
BEGIN
	SELECT *  FROM worker2 limit N;
END //

DELIMITER ;

call Getnrecords(2);
call highest_salary(2)


