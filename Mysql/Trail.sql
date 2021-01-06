create table Doctor_Master(Doc_ID varchar(15) primary key, 
Doc_Name varchar(15) not null, 
Department varchar(15) not null);
insert into Doctor_Master values("D001","Ram","ENT"), ("D002","Rajan","Heart"), 
("D003","Sumi","Eye"), ("D004","Sheela","Surgery"), 
("D005","Shoba","Neuro"), ("D006","Ragu","ENT");
select * from Doctor_Master;
-- drop table Doctor_Master;


create table Room_Master(Room_No varchar(15) primary key, 
Room_type varchar(15) not null, 
Status varchar(15) not null);
insert into Room_Master values("R001","AC","Occupied"), ("R002","Suite","Vacant"), 
("R003","Non-AC","Occupied"), ("R004","AC","Vacant"),
 ("R005","Suite","Vacant"), ("R006","AC","Occupied");
select * from Room_Master;
-- drop table Room_Master;


create table Patient_Master(P_id varchar(15) primary key, P_Name varchar(15) not null, 
P_Age int(15) not null, P_Weight int(15) not null, P_Gender varchar(10) not null,
P_Address varchar(50) not null, P_Phone_no varchar(10) not null, 
P_Disease varchar(50) not null, Consult_Doctor_id varchar(5) not null, 
foreign key (Consult_Doctor_id) REFERENCES Doctor_Master(Doc_ID));

insert into Patient_Master values
("P001","Gita",35,65,"F","Chennai",9453739323,"Eye Infection","D003"),
("P002","Sita",45,75,"F","Gundy",9452529328,"Migrain","D005"),
("P003","Tamu",35,60,"M","Kanchee",9459876321,"Blood Clot","D004"),
("P004","Fellin",25,60,"M","Chengalpat",9453712345,"Hearing Problem","D001"),
("P005","Janu",20,45,"F","Perungalathur",9230983459,"Nose Infection","D006");

Select * from Patient_Master;
