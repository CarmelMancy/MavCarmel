Use Sakila;
create table Doctor_Master(Doc_ID varchar(15) primary key, 
Doc_Name varchar(15) not null, 
Department varchar(15) not null);
insert into Doctor_Master values
("D001","Ram","ENT"), ("D002","Rajan","ENT"), 
("D003","Smita","Eye"), ("D004","Bhavan","Surgery"), 
("D005","Sheela","Surgery"), ("D006","Nethra","Surgery");
select * from Doctor_Master;
-- drop table Doctor_Master;


create table Room_Master(Room_No varchar(15) primary key, 
Room_type varchar(15) not null, 
Status varchar(15) not null);
insert into Room_Master values
("R001","AC","Occupied"), ("R002","Suite","Vacant"), 
("R003","Non-AC","Vacant"), ("R004","Non-AC","Occupied"),
 ("R005","AC","Vacant"), ("R006","AC","Occupied");
select * from Room_Master;
-- drop table Room_Master;


create table Patient_Master(P_Id varchar(15) primary key, 
P_Name varchar(15) not null, 
P_Age int(15) not null, P_Weight int(15) not null, 
P_Gender varchar(10) not null,
P_Address varchar(50) not null, P_Phone_no varchar(10) not null, 
P_Disease varchar(50) not null, Consult_Doctor_ID varchar(5) not null, 
foreign key (Consult_Doctor_ID) REFERENCES Doctor_Master(Doc_ID));

insert into Patient_Master values
("P001","Gita",35,65,"F","Chennai",9867145678,"Eye Infection","D003"),
("P002","Ashish",40,70,"M","Delhi",9845675678,"Asthma","D003"),
("P003","Radha",25,60,"F","Chennai",9867166678,"Pain in heart","D005"),
("P004","Chandra",28,55,"F","Banglore",9978675567,"Asthma","D001"),
("P005","Goyal",42,65,"M","Delhi",8967533223,"Pain in Stomach","D004");

Select * from Patient_Master;
-- drop table Patient_Master;

create table Room_Allocation(Room_Num varchar(15),  
P_ID varchar(15) not null,
Admission_date varchar(15) not null, 
Release_date varchar(15), 
foreign key (Room_Num) REFERENCES Room_Master(Room_No),
foreign key (P_ID) REFERENCES Patient_Master(P_Id));

insert into Room_Allocation VALUES
("R001", "P001", "15-Oct-16", "26-Oct-16"),
("R002", "P002", "15-Nov-16", "26-Nov-16"),
("R002", "P003", "01-Dec-16", "30-Dec-16"),
("R004", "P001", "01-Jan-17", "30-Jan-16");

select * from Room_Allocation;
-- drop table Room_Allocation;

-- Query 1
select P_ID, Addmission_date 
from Room_Allocation WHERE Addmission_Date like "%Jan%";

-- Query 2
select P_Name, P_Gender from Patient_Master 
WHERE P_Gender= "F" and P_Disease!= "Asthma";

-- Query 3
SELECT P_Gender, COUNT(P_Id) AS COUNT
FROM Patient_Master
GROUP BY P_Gender;

-- Query 4
SELECT Patient_Master.P_Id ,Patient_Master.P_Name, 
Doctor_Master.Doc_ID, Doctor_Master.Doc_Name,
Room_Allocation.Room_Num, Room_Master.Room_Type, 
Room_Allocation.Admission_date
FROM Patient_Master INNER JOIN Doctor_Master
ON Patient_Master.Consult_Doctor_ID=Doctor_Master.Doc_ID
INNER JOIN Room_Allocation
ON Patient_Master.P_Id=Room_Allocation.P_Id
INNER JOIN Room_Master
ON Room_Allocation.Room_Num=Room_Master.Room_No;

-- Query 5
select Room_No as Rooms_never_Alloted
from Room_Master where not Room_No in (select Room_Num from Room_Allocation);

-- Query 6
SELECT R.Room_No, R.Room_Type from Room_Master R where
(select count(*) from Room_Allocation where Room_Num=R.Room_No)>1;