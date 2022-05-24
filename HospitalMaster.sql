
drop database if exists HospitalDB;

create database HospitalDB;

use HospitalDB;

drop table if exists Doctor;

create table Doctor (
	Id int PRIMARY KEY AUTO_INCREMENT ,
    Name varchar(50) NOT NULL,
    Speciality varchar(50) NOT NULL,
    Phone varchar(10) NOT NULL
    );

drop table if exists Tests;

create table Tests(
		Id int PRIMARY KEY AUTO_INCREMENT,
        Type varchar(200) NOT NULL,
        Category varchar(200) NOT NULL
        );

drop table if exists Patient;

create table Patient(
			Id int PRIMARY KEY AUTO_INCREMENT, 
            Name varchar(60) NOT NULL, 
            DateOfBirth date NOT NULL,
			Phone varchar(10) NOT NULL,
            Email varchar(40) NOT NULL
            );
 
 drop table if exists Treats;
 
create table Treats (
			PatientDoctorId int PRIMARY KEY AUTO_INCREMENT,
            PatientId int NOT NULL,
            DoctorId int NOT NULL,
            Diagnose varchar(500) NOT NULL,
            Treatments varchar(500) NOT NULL,
            Constraint fk_patientdoctor_patient foreign key (PatientId) references Patient(Id),
            constraint fk_patientdoctor_doctor foreign key (DoctorId) references Doctor(Id)
			);

	drop table if exists Log;
    
create table Log(
			LogId int PRIMARY KEY AUTO_INCREMENT,
            PatientId int NOT NULL,
            TestId int NOT NULL,
            TimeDate DATE NOT NULL,
            constraint fk_log_patient foreign key (PatientId) references Patient(Id),
            constraint fk_log_test foreign key (TestId) references Tests(Id)
            );
    
    
    




