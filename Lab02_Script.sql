-- Drop the Engineers, Faculty, Classes and ClassEnrollment tables
DROP Table Engineers cascade constraints;
DROP Table Faculty cascade constraints;
DROP Table Classes cascade constraints;
DROP Table ClassEnrollments cascade constraints;

-- Creates the Engineers, Faculty, Classes and ClassEnrollment tables
CREATE TABLE Engineers (
EID INT PRIMARY KEY,
Lastname VARCHAR(255),
Firstname VARCHAR(255),
Email VARCHAR(255),
Graddate DATE
);

CREATE TABLE Faculty (
FID INT PRIMARY KEY,
Lastname VARCHAR(255),
Firstname VARCHAR(255),
Email VARCHAR(255),
Hiredate DATE
);

CREATE TABLE Classes (
CID INT PRIMARY KEY,
Subject VARCHAR(10),
Catalognbr INT,
Title VARCHAR(255)
);

CREATE TABLE CLASSENROLLMENTS (
EnID INT PRIMARY KEY,
CID INT,
FID INT,
EID INT,
FOREIGN KEY (CID) REFERENCES Classes(CID),
FOREIGN KEY (FID) REFERENCES Faculty(FID),
FOREIGN KEY (EID) REFERENCES Engineers(EID)
);


-- Insert records into the Engineer Table
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (1, 'Smith', 'Robert', 'robert.smith@example.com',  TO_DATE('2020-05-15','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (2, 'Williams', 'Ronald', 'ronald.williams@example.com', TO_DATE('2019-08-20','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (3, 'Jones', 'Rachel', 'rachel.jones@example.com', TO_DATE('2021-08-10','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (4, 'Brown', 'John', 'john.brown@example.com', TO_DATE('2018-05-12','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (5, 'Davis', 'Mark', 'mark.davis@example.com', TO_DATE('2017-03-24', 'YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (6, 'Anderson', 'Julie', 'julie.anderson@example.com', TO_DATE('2019-06-25','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES(7, 'Moore', 'Michael', 'michael.moore@example.com', TO_DATE('2016-04-23','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (8, 'White', 'Linda', 'linda.white@example.com', TO_DATE('2015-07-14','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (9, 'Harris', 'Karen', 'karen.harris@example.com', TO_DATE('2019-04-13','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (10, 'Taylor', 'Leah', 'leah.taylor@example.com', TO_DATE('2015-08-28','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (11, 'Miller', 'Eliza', 'eliza.miller@example.com', TO_DATE('2018-01-11','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (12, 'Parker', 'Peter', 'peter.parker@example.com', TO_DATE('2010-08-10','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (13, 'Grimme', 'Benjamin', 'benjamin.grimme@example.com', TO_DATE('2015-06-17','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (14, 'Storm', 'Susan', 'storm.susan@example.com', TO_DATE('2020-06-14','YYYY-MM-DD'));
INSERT INTO Engineers(EID, Lastname, Firstname, Email, Graddate) VALUES (15, 'Eleven', 'Kevin', 'eleven.kevin@example.com', TO_DATE('2013-04-18','YYYY-MM-DD'));

-- Insert records into faculty table
INSERT INTO Faculty (FID, Lastname, Firstname, Email, Hiredate) VALUES (1, 'Richards', 'Reed', 'rrichards@example.com',  TO_DATE('2017-10-21', 'YYYY-MM-DD'));
INSERT INTO Faculty (FID, Lastname, Firstname, Email, Hiredate) VALUES (2, 'Clark', 'Aurora', 'aclark@exampl.com', TO_DATE('2019-06-23','YYYY-MM-DD'));
INSERT INTO Faculty (FID, Lastname, Firstname, Email, Hiredate) VALUES(3, 'Howlet', 'James', 'jhowlet@example.com', TO_DATE('2015-05-30','YYYY-MM-DD'));

-- Insert records into classes
INSERT INTO Classes (CID, Subject, Catalognbr, Title) VALUES (1, 'MAT', 101, 'Calculus 1');
INSERT INTO Classes (CID, Subject, Catalognbr, Title) VALUES(2, 'CMIT', 202, 'Computer Troubleshooting');
INSERT INTO Classes (CID, Subject, Catalognbr, Title)VALUES(3, 'SDEV', 350, 'Database Security');

--Insert records into ClassEnrollments
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (1, 1, 1, 1);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (2, 1, 2, 2);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES(3, 1, 3, 3);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES(4, 2, 1, 4);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (5, 2, 2, 5);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (6, 2, 3, 6);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (7, 3, 1, 7);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (8, 3, 2, 8);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (9, 3, 3, 9);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (10, 1, 1, 10);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (11, 1, 2, 11);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (12, 1, 3, 12);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (13, 2, 1, 13);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (14, 2, 2, 14);
INSERT INTO CLASSENROLLMENTS (EnID, CID, FID, EID) VALUES (15, 2, 3, 15);

-- Displays records of each table in descending order
SELECT*FROM Engineers 
ORDER BY EID DESC;

SELECT*FROM Faculty
ORDER BY FID DESC;
    
SELECT*FROM Classes
ORDER BY CID DESC;

SELECT*FROM ClassEnrollments
ORDER BY EnID DESC;

-- Update the records according to specifications

-- Update lastname of a Faculty to "Friendship"
UPDATE Faculty
SET Lastname = 'Friendship'
WHERE FID = 2;

-- Update firstname of an Engineer to "Amadeus"
UPDATE Engineers
SET Lastname = 'Friendship'
WHERE EID = 1;

-- Update Subject of one class to "IOT Cyber"
UPDATE Classes
Set Subject = 'IOT Cyber'
WHERE CID = 3;

-- Delete records in ClassEnrollments
DELETE FROM ClassEnrollments 
WHERE EnID = (SELECT MIN(EnID)FROM ClassEnrollments);

-- Creates a view joining the required tbales
CREATE VIEW EnrollmentView AS
SELECT Engineers.Lastname AS Engineer_Lastname,
Engineers.Firstname AS Engineer_Firstname,
Faculty.Lastname AS Faculty_Lastname,
Faculty.Email AS Faculty_Email,
Classes.Subject AS Class_Subject,
Classes.Title AS Class_Title
FROM
    ClassEnrollments
JOIN Engineers ON ClassEnrollments.EID = Engineers.EID
JOIN Faculty ON ClassEnrollments.FID = Faculty.FID
JOIN Classes ON ClassEnrollments.CID = Classes.CID;

-- Retrieve view data
SELECT * FROM EnrollmentView;