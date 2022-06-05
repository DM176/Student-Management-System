create database db222
GO
use db222

drop table Student
drop table Course


CREATE TABLE Student
(
	 roll_number VARCHAR(30) PRIMARY KEY,
	 name VARCHAR(30),
	 password VARCHAR(30),
	 dob VARCHAR(30),
	 cnic INT,
	 /*regId INT FOREIGN KEY REFERENCES Registeration(regId)*/
)

CREATE TABLE Course
(
	course_id VARCHAR(30) PRIMARY KEY,
	course_name VARCHAR(30),
	/*regId INT FOREIGN KEY REFERENCES  Registeration(regId)*/
)
/*CREATE TABLE Section
(
   course_id VARCHAR(30) FOREIGN KEY REFERENCES Course(course_id),
   section_name VARCHAR(30),
   PRIMARY KEY(course_id,section_name)
)*/
DROP TABLE Teacher
CREATE TABLE Teacher
(
	teacher_id VARCHAR(30) PRIMARY KEY,
	teacher_name VARCHAR(30),
	teacher_password VARCHAR(30),
	teacher_dob VARCHAR(30),
	teacher_cnic INT,	
)

DROP TABLE Feechallan
CREATE TABLE Feechallan
(
	challan_id INT PRIMARY KEY,
	challan_amount INT,
	challan_date VARCHAR(30),
	student_id VARCHAR(30) FOREIGN KEY REFERENCES Student(roll_number),
	semester_name VARCHAR(30),

	/*PRIMARY KEY(student_id,semester_name)*/
)

DROP TABLE Teaches
CREATE TABLE Teaches
(
	teaches_id INT PRIMARY KEY,

	teacher_id VARCHAR(30) FOREIGN KEY REFERENCES Teacher(teacher_id),
	course_id VARCHAR (30) FOREIGN KEY REFERENCES Course(course_id),
	course_section VARCHAR(30) ,
	/*PRIMARY KEY(teacher_id, course_id)*/
)
DROP TABLE Attendance

CREATE TABLE Attendance
(

	attendance_id INT PRIMARY KEY,
	attendance_date VARCHAR(30),
	attendance_time VARCHAR(30),
	student_id VARCHAR(30) FOREIGN KEY REFERENCES Student(roll_number),
	course_id VARCHAR(30) FOREIGN KEY REFERENCES Course(course_id),
	section_name VARCHAR(30)	
)


DROP TABLE Registeration
CREATE TABLE Registeration
(
	reg_id INT PRIMARY KEY,
	section_name VARCHAR(30),
	semester_Name VARCHAR(30),
	grade VARCHAR(30),
	student_id VARCHAR(30) FOREIGN KEY REFERENCES Student(roll_number),
	course_id VARCHAR(30) FOREIGN KEY REFERENCES Course(course_id)
)
DROP TABLE Exam
CREATE TABLE Exam
(
	exam_id INT PRIMARY KEY ,
	exam_name VARCHAR(30),
	marks VARCHAR(30) ,
	student_id VARCHAR(30) FOREIGN KEY REFERENCES Student(roll_number),
	course_id VARCHAR(30)  FOREIGN KEY REFERENCES Course(course_id)
)

INSERT INTO Course VALUES('CS-101','Introduction to Computing')
INSERT INTO Course VALUES('CS-102','Advanced Programming')

INSERT INTO Student VALUES('17l-4307','Daniyal','12345','1999',35202)
INSERT INTO Student VALUES('17l-4073','Hamzah','12345','1999',35202)
INSERT INTO Student VALUES('17l-4051','Arslan','12345','1999',35202)

INSERT INTO Registeration VALUES(1,'A','Fall2021','-','17l-4307','CS-101')
INSERT INTO Registeration VALUES(2,'A','Fall2021','-','17l-4073','CS-102')
INSERT INTO Registeration VALUES(3,'A','Fall2021','-','17l-4051','CS-101')

INSERT INTO Exam VALUES(1,'Midterm','-','17l-4307','CS-101')
INSERT INTO Exam VALUES(2,'Midterm','-','17l-4073','CS-102')
INSERT INTO Exam VALUES(3,'Midterm','-','17l-4051','CS-101')

INSERT INTO Teacher VALUES('123','Haroon Mehmmod','12345','1999',35202)
INSERT INTO Feechallan VALUES(1,100000,'6/18/2021','17l-4307','Fall 2021')

INSERT INTO Teaches VALUES(1, '123', 'CS-101','A') 

INSERT INTO Attendance VALUES (1,'6/18/2021','01:13 AM','17l-4307','CS-101','A')



SELECT * FROM Student
SELECT * FROM Course
SELECT * FROM Teacher
SELECT * FROM Registeration
SELECT * FROM Exam

SELECT * FROM Feechallan
SELECT * FROM Teaches;
SELECT * FROM Attendance;