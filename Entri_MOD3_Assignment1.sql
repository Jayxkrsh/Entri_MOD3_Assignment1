create database School;
use school;
create table Students(Roll_No int,Name varchar(30),Marks int,Grade varchar(10));
insert into students(Roll_No,Name,Marks,Grade) values (1,"Akhil",96,"A+"),
(2,"Bibin",92,"A+"),(3,"Calvin",87,"B+"),(4,"Don",78,"B"),(5,"Elvin",86,"B+"),(6,"Febin",77,"B"),(7,"Goshal",94,"A+"),(8,"Hari",88,"B+"),
(9,"Irene",92,"A+"),(10,"Johnson",83,"B+");
select * from students;
set sql_safe_updates=0;
alter table students add Contact varchar(10);
ALTER TABLE students
DROP COLUMN Contacts;
UPDATE students
SET Contact = CASE
    WHEN Roll_No = 1 THEN '7681235469'
    WHEN Roll_No = 2 THEN '8946734621'
    WHEN Roll_No = 3 THEN '5647823891'
    WHEN Roll_No = 4 THEN '3678924567'
    WHEN Roll_No = 5 THEN '7896512345'
    WHEN Roll_No = 6 THEN '6578732123'
    WHEN Roll_No = 7 THEN '8906541237'
    WHEN Roll_No = 8 THEN '7568925346'
    WHEN Roll_No = 9 THEN '6354890213'
    WHEN Roll_No = 10 THEN '9064537892'
    ELSE contact
END
WHERE Roll_No IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);


#droping the column grade
ALTER TABLE students
DROP COLUMN Grade;

ALTER TABLE students
RENAME TO CLASSTEN;

truncate classten;
select*from classten;

drop table classten;

