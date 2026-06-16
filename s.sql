create schema fx_db;

use fx_db;

-- Family Table
CREATE TABLE Fx (
    FamilyID INT PRIMARY KEY AUTO_INCREMENT,
    FamilyName VARCHAR(100) NOT NULL,
    Address VARCHAR(200)
);

create table sib(
 MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FamilyID INT,
    FullName VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Occupation VARCHAR(100),
    Phone VARCHAR(20),
    FOREIGN KEY (FamilyID) REFERENCES Family(FamilyID)

);



CREATE TABLE Family (
    FamilyID INT PRIMARY KEY AUTO_INCREMENT,
    FamilyName VARCHAR(100) NOT NULL,
    Address VARCHAR(200)
);

INSERT INTO Family (FamilyName, Address)
VALUES ('Islam Family', 'Dhaka, Bangladesh');


-- Members Table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FamilyID INT,
    FullName VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Occupation VARCHAR(100),
    Phone VARCHAR(20),
    FOREIGN KEY (FamilyID) REFERENCES Family(FamilyID)
);

INSERT INTO Members
(FamilyID, FullName, Gender, DateOfBirth, Occupation, Phone)
VALUES
(1, 'Abdul Karim', 'Male', '1970-05-10', 'Teacher', '01711111111'),
(1, 'Rokeya Begum', 'Female', '1975-08-15', 'Housewife', '01822222222'),
(1, 'Nazmul Islam', 'Male', '2002-04-20', 'Student', '01933333333');

-- Relationship Table
CREATE TABLE Relationships (
    RelationID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT,
    RelatedMemberID INT,
    RelationType VARCHAR(50),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (RelatedMemberID) REFERENCES Members(MemberID)
);

INSERT INTO Relationships
(MemberID, RelatedMemberID, RelationType)
VALUES
(1, 3, 'Father'),
(2, 3, 'Mother');



