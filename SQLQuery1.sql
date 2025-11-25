create database SchoolDb

use SchoolDb

create table Students(
Id int Primary key Identity,
FullName varchar(100) not null,
Age int,
Email varchar(30) unique,
Score int default 0,
check (Age>6 and Age<20),
check (Age>0 and Age<100)
)



--1 1.Students c?dv?lin? 5 t?l?b? ?lav? edin
truncate table Students
insert into Students values
('Xanim Kerimli',15,'xanim@gmail.com',94),
('Nermin Ceferli',18,'nermin@gmail.com',84),
('Aysu Eliyeva',13,'aysu@gmail.com',74),
('Akif Ceferov',17,'akif@gmail.com',68),
('Selim Hesenli',9,'selim@gmail.com',90)

select * from Students

--2.Students c?dv?lin? yeni sütun ?lav? edin

alter table Students 
add Bonus int

update Students
set Bonus=100
where ID=2 or ID=3

--3.Score-u 90-dan yuxarý olan t?l?b?l?rin Email-l?rini yenil?yin

update Students
set Email='max@gmail.com' where Score>90

--4. Yaþ 10-dan kiçik olan t?l?b?l?ri silin

delete Students where Age<10

--5. Score üçün yeni þ?rt ?lav? edin(score yalniz 5 e bolunen edeler olmalidir)
alter table Students 
Add constraint chck Check(Score>60 and Score<100)

--6 “TopStudents” adlý c?dv?l yaradin ID,FullName,Score olsun  (Students c?dv?lind?n Score > 90 olanlarý TopStudents-? insert edin)
 create table TopStudents(
 ID int primary key,
 FullName varchar(30) not null,
 Score int)
 drop table TopStudents

 insert into TopStudents(ID,Fullname,Score)
 select ID,Fullname,Score 
 from Students
 where Score>90

 select * from TopStudents