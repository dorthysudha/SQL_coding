Create database hospital;
use hospital;

-- create table --
create table patients (
Patient_ID int, 
Patient_Name varchar(50),
Age int,
Gender varchar(10) check (Gender in ("M" , "F")),
 Admission_Date date default (current_date)
 );
 select * from patients;
 -- add column --
 alter table patients add column Doctor_assigned varchar(50);
 
 -- alter modify column --
 alter table patients modify Patient_Name varchar(100);
 
 -- rename table --
 alter table patients rename patients_info;
 
 -- Truncate or drop table --
  truncate table patients_info;
  drop table patients_info;
 

