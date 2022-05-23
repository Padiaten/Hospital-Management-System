use master;

drop database if exists HospitalDB;

create database HospitalDB;

use master;
use HospitalDB;

drop table if exists Doctor;

create table Doctor (
	Id int PRIMARY KEY AUTO INCREMENT ,
    Name varchar(50) NOT NULL,
    Speciality varchar(50) NOT NULL,
    Phone varchar(10) NOT NULL
    );

drop table if exists Tests;

create table Tests(
		Id int PRIMARY KEY AUTO INCREMENT,
        Type varchar(200) NOT NULL,
        Category varchar(200) NOT NULL
        );

drop table if exists Patient;

create table Patient(
			Id int PRIMARY KEY AUTO INCREMENT, 
            Name varchar(60) NOT NULL, 
            DateOfBirth date NOT NULL,
			Phone varchar(10) NOT NULL,
            Email varchar(40) NOT NULL
            );

    
    
    




