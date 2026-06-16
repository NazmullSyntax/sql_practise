-- Create Database
CREATE DATABASE pay;

-- Use Database
USE pay;

-- Create Table
CREATE TABLE pay (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Relationship VARCHAR(50),
    FatherName VARCHAR(100),
    MotherName VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);

select * from pay