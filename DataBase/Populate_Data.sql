-- Insert Data into Teaching_Staff table
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE,Salary,  EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (100,'Ahmed','Mohammed', 'Professor','12345678901234', TO_DATE('15-05-1970', 'dd-mm-yyyy'),TO_DATE('02-04-2005', 'dd-mm-yyyy'),15000,'ahmedm@gmail.com',null,'01187290183');         
insert into Teaching_Staff (Staff_ID, First_Name, Last_Name, Staff_Role, National_ID, Date_Of_Birth, Hire_Date, Salary, Email, Department_ID, Phone_Number)
values (103, 'Ibrahim', 'Mohamed', 'Professor', '12345000123456', TO_DATE('01-01-1975', 'DD-MM-YYYY'), TO_DATE('01-09-2000', 'DD-MM-YYYY'), 15500, 'ahmed.mohamed@gmail.com', null, '01000112233');
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE, Salary,EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (105,'Eslam','Nasser', 'Professor','12345611101234', TO_DATE('11-05-1972', 'DD-MM-YYYY'),TO_DATE('02-04-2005', 'DD-MM-YYYY'),15900,'ahmedm@gmail.com',null,'01187290183');
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE, Salary,EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (106,'Hassan','Ali', 'Professor','78901234567890', TO_DATE('10-03-1965', 'DD-MM-YYYY'),TO_DATE('01-08-1990', 'DD-MM-YYYY'),13000,'hassan.ali@gmail.com',null,'01199988877');
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE,Salary, EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (112,'Omar','Yassin', 'Professor','78967349012345', TO_DATE('30-01-1960', 'DD-MM-YYYY'),TO_DATE('10-06-1985', 'DD-MM-YYYY'),16400,'omar.yassin@gmail.com',null,'01155566677');
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE, Salary,EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (108,'Hossam','Ahmed', 'Professor','20345284101234', TO_DATE('06-09-1968', 'DD-MM-YYYY'),TO_DATE('03-09-2002', 'DD-MM-YYYY'),15900,'hossam.ahmed@gmail.com',null,'01267920183');
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE, Salary,EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (110,'Anas','Alaa', 'Professor','30901234512890', TO_DATE('02-05-1970', 'DD-MM-YYYY'),TO_DATE('11-09-1996', 'DD-MM-YYYY'),13000,'ans.alaa@gmail.com',null,'01592988877');


-- Insert Data into Departments table
insert into departments (DEPARTMENT_ID, DEPARTMENT_NAME,Manager_Id) values (1,'Computer Science',100);
insert into departments (DEPARTMENT_ID, DEPARTMENT_NAME,Manager_Id) values (2,'Artificial Intelligence',103);
insert into departments (DEPARTMENT_ID, DEPARTMENT_NAME,Manager_Id) values (3,'Information Technology',105);
insert into departments (DEPARTMENT_ID, DEPARTMENT_NAME,Manager_Id) values (4,'Information System',106);
insert into departments (DEPARTMENT_ID, DEPARTMENT_NAME,Manager_Id) values (5,'Multi Media',112);
insert into departments (DEPARTMENT_ID, DEPARTMENT_NAME,Manager_Id) values (6,'Medical Informatics',108);
insert into departments (DEPARTMENT_ID, DEPARTMENT_NAME,Manager_Id) VALUES (7, 'Software Engineering',110);


-- Update Teaching_Staff to change DEPARTMEN_TID column
update Teaching_Staff set DEPARTMENT_ID = 1 where STAFF_ID=100;
update Teaching_Staff set DEPARTMENT_ID = 2 where STAFF_ID=103;
update Teaching_Staff set DEPARTMENT_ID = 3 where STAFF_ID=105;
update Teaching_Staff set DEPARTMENT_ID = 4 where STAFF_ID=106;
update Teaching_Staff set DEPARTMENT_ID = 5 where STAFF_ID=112;
update Teaching_Staff set DEPARTMENT_ID = 6 where STAFF_ID=108;
update Teaching_Staff set DEPARTMENT_ID = 7 where STAFF_ID=110;


-- add staff in Computer Science department (1)
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE,Salary,  EMAIL, DEPARTMENT_ID, PHONE_NUMBER) 
values (101,'Ali','Ismail', 'Assistant Professor','20305678901234', TO_DATE('25-01-1980', 'dd-mm-yyyy'),TO_DATE('21-12-2015', 'dd-mm-yyyy'),12000,'AliI@gmail.com',1,'01287710183');
insert into Teaching_Staff (Staff_ID, First_Name, Last_Name, Staff_Role, National_ID, Date_Of_Birth, Hire_Date, Salary, Email, Department_ID, Phone_Number)
values (104, 'Sara', 'Hassan', 'Lecturer', '12345000223456', TO_DATE('15-03-1980', 'DD-MM-YYYY'), TO_DATE('01-08-2005', 'DD-MM-YYYY'), 12000, 'sara.hassan@gmail.com',1, '01011223344');


-- add staff in Information Technology department (3)
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE, Salary,EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (114,'Khaled','Omar', 'Assistant Professor','78912345678901', TO_DATE('15-12-1978', 'DD-MM-YYYY'),TO_DATE('15-07-2015', 'DD-MM-YYYY'),12500,'khaled.omar@gmail.com',3,'01044455566');
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE,Salary, EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (107,'Mona','Youssef', 'Lecturer','78934567890123', TO_DATE('20-05-1985', 'DD-MM-YYYY'),TO_DATE('01-01-2012', 'DD-MM-YYYY'),6000,'mona.youssef@gmail.com',3,'01011122233');


-- add staff in Information System department (4)
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE, Salary, EMAIL, DEPARTMENT_ID, PHONE_NUMBER) 
values (102,'Mohammed','Kamal', 'Teaching Assistant','45015678901234', TO_DATE('15-11-1996', 'dd-mm-yyyy'),TO_DATE('01-02-2024', 'dd-mm-yyyy'),8000,'MohammedK@gmail.com',4,'01277249183');
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE,salary, EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (109,'Laila','Hassan', 'Lecturer','78956789012345', TO_DATE('10-09-1982', 'DD-MM-YYYY'),TO_DATE('12-03-2018', 'DD-MM-YYYY'),9500,'laila.hassan@gmail.com',4,'01166677788');


-- add staff in Medical Informatics department (6)
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE,salary, EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (113,'Hana','Ali', 'Teaching Assistant','78978901234567', TO_DATE('05-07-1995', 'DD-MM-YYYY'),TO_DATE('01-11-2020', 'DD-MM-YYYY'),8000,'hana.ali@gmail.com',6,'01088899900');
insert into Teaching_Staff (STAFF_ID, FIRST_NAME, LAST_NAME, STAFF_ROLE, NATIONAL_ID, DATE_OF_BIRTH, HIRE_DATE,salary, EMAIL, DEPARTMENT_ID, PHONE_NUMBER)
values (111,'Salma','Khaled', 'Lecturer','78990123456789', TO_DATE('18-11-1988', 'DD-MM-YYYY'),TO_DATE('05-09-2019', 'DD-MM-YYYY'),7600,'salma.khaled@gmail.com',6,'01111133344');


-- Insert Data into Students table
insert into Students (Student_Code, First_Name, Last_Name, Email, Date_Of_Birth, National_ID, Gender, Phone_Number, Student_Level, Enrollment_Date, Department_ID)
values (2001, 'Somaya', 'Ahmed', 'somaya.ahmed@gmail.com', TO_DATE('07-07-2002', 'DD-MM-YYYY'), '3020738800246', 'Female', '01124742468', 4, TO_DATE('08-10-2020', 'DD-MM-YYYY'), 6);

insert into Students (Student_Code, First_Name, Last_Name, Email, Date_Of_Birth, National_ID, Gender, Phone_Number,  Student_Level,  Enrollment_Date, Department_ID)
values (2002, 'Mona', 'Ibrahim', 'mona.ibrahim@gmail.com', TO_DATE('22-10-2004', 'DD-MM-YYYY'), '3020738867246', 'Female', '01200112234', 2, TO_DATE('18-10-2023', 'DD-MM-YYYY'), 1);

insert into Students (Student_Code, First_Name, Last_Name, Email, Date_Of_Birth, National_ID, Gender, Phone_Number, Student_Level,Enrollment_Date, Department_ID)
values (2003, 'Youssef', 'Ali', 'youssef.ali@gmail.com', TO_DATE('15-09-2005', 'DD-MM-YYYY'), '3020731200246', 'Male', '01123456789',  1,  TO_DATE('10-10-2024', 'DD-MM-YYYY'), 3);

insert into Students (Student_Code, First_Name, Last_Name, Email, Date_Of_Birth, National_ID, Gender, Phone_Number,Student_Level, Enrollment_Date, Department_ID)
values (2004, 'Laila', 'Hassan', 'laila.hassan@gmail.com', TO_DATE('12-03-2004', 'DD-MM-YYYY'), '3020648800246', 'Female', '01234567890',  2,  TO_DATE('18-10-2023', 'DD-MM-YYYY'), 4);

insert into Students (Student_Code, First_Name, Last_Name, Email, Date_Of_Birth, National_ID, Gender, Phone_Number, Student_Level,  Enrollment_Date, Department_ID)
values (2005, 'Omar', 'Khaled', 'omar.khaled@gmail.com', TO_DATE('12-07-2002', 'DD-MM-YYYY'), '3020128800246', 'Male', '01098765432', 4,  TO_DATE('01-10-2021', 'DD-MM-YYYY'), 6);

insert into Students (Student_Code, First_Name, Last_Name, Email, Date_Of_Birth, National_ID, Gender, Phone_Number, Student_Level,  Enrollment_Date, Department_ID)
values (2006, 'Salma', 'Khaled', 'salma.khaled@gmail.com', TO_DATE('05-07-2005', 'DD-MM-YYYY'), '3020727200246', 'Female', '01088899900', 1,  TO_DATE('10-10-2024', 'DD-MM-YYYY'), 1);

insert into Students (Student_Code, First_Name, Last_Name, Email, Date_Of_Birth, National_ID, Gender, Phone_Number, Student_Level,  Enrollment_Date, Department_ID)
values (2007, 'Hana', 'Ali', 'hana.ali@gmail.com', TO_DATE('10-11-2003', 'DD-MM-YYYY'), '3020784260246', 'Female', '01155566677', 3,  TO_DATE('08-10-2022', 'DD-MM-YYYY'), 3);




-- Insert Data into Courses table in Computer Science department (1)
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (1, 'Introduction to Computer Sciences', 3, 1);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (2, 'Structure of Programming', 4, 1);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (3, 'Data Structures and Algorithms', 3, 1);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (4, 'Computer Architecture', 3, 1);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (5, 'Software Engineering', 3, 1);

-- Insert Data into Courses table in Information Technology department (3)
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (6, 'Data Communications', 3, 3);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (7, 'Computer Networks', 4, 3);

-- Insert Data into Courses table in Information System department (4)
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (8, 'Web Information Systems', 3, 4);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (9, 'Foundations of Information Systems', 3, 4);

-- Insert Data into Courses table in Medical Informatics department (6)
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (10, 'Medical Terminology', 3, 6);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (11, 'Human Pathology', 3, 6);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (12, 'Introduction to Biostatistics', 3, 6);

-- Insert Courses for Artificial Intelligence Department (2)
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (13, 'Introduction to Artificial Intelligence', 3, 2);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (14, 'Machine Learning', 4, 2);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (15, 'Natural Language Processing', 3, 2);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (16, 'Deep Learning', 4, 2);

-- Insert Courses for Multi Media Department (5)
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (17, 'Introduction to Multimedia Systems', 3, 5);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (18, 'Digital Audio and Video', 3, 5);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (19, 'Multimedia Authoring', 3, 5);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (20, 'Interactive Media Design', 4, 5);

-- Insert Courses for Software Engineering Department (7)
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (21, 'Software Requirements Analysis', 3, 7);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (22, 'Software Project Management', 3, 7);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (23, 'Agile Software Development', 3, 7);
insert into Courses (Course_ID, Course_Name, Credits_Hours, Department_ID)
values (24, 'Testing and Quality Assurance', 3, 7);



-- History for (Student_Code: 2001)
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1001,1, TO_DATE('08-10-2020', 'DD-MM-YYYY'), TO_DATE('07-10-2021', 'DD-MM-YYYY'), 2001);
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1002, 2, TO_DATE('08-10-2021', 'DD-MM-YYYY'), TO_DATE('07-10-2022', 'DD-MM-YYYY'), 2001);
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1003,3, TO_DATE('08-10-2022', 'DD-MM-YYYY'), TO_DATE('07-10-2023', 'DD-MM-YYYY'), 2001);
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1004,4, TO_DATE('08-10-2023', 'DD-MM-YYYY'), NULL, 2001);

-- History for  (Student_Code: 2002)
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1005, 1, TO_DATE('18-10-2023', 'DD-MM-YYYY'), TO_DATE('26-6-2024', 'DD-MM-YYYY'), 2002);
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1006, 1, TO_DATE('08-10-2024', 'DD-MM-YYYY'), NULL, 2002);

-- History for (Student_Code: 2003)
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1007, 1, TO_DATE('10-10-2024', 'DD-MM-YYYY'), NULL, 2003);

-- History for (Student_Code: 2004)
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1008, 1, TO_DATE('18-10-2023', 'DD-MM-YYYY'), TO_DATE('17-07-2024', 'DD-MM-YYYY'), 2004);
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1009, 2, TO_DATE('18-10-2024', 'DD-MM-YYYY'), NULL, 2004);

-- History for (Student_Code: 2005)
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1010,1, TO_DATE('01-10-2021', 'DD-MM-YYYY'), TO_DATE('30-06-2022', 'DD-MM-YYYY'), 2005);
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1011,2, TO_DATE('02-10-2022', 'DD-MM-YYYY'), TO_DATE('23-06-2023', 'DD-MM-YYYY'), 2005);
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1012, 3, TO_DATE('19-10-2023', 'DD-MM-YYYY'), TO_DATE('19-07-2024', 'DD-MM-YYYY'), 2005);
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1013, 4, TO_DATE('07-10-2024', 'DD-MM-YYYY'), NULL, 2005);

-- History for (Student_Code: 2006)
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1014, 1, TO_DATE('10-10-2024', 'DD-MM-YYYY'), NULL, 2006);

-- History for (Student_Code: 2007)
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1015,1, TO_DATE('08-10-2022', 'DD-MM-YYYY'), TO_DATE('07-07-2023', 'DD-MM-YYYY'), 2007);
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1016,2, TO_DATE('12-10-2023', 'DD-MM-YYYY'), TO_DATE('01-07-2024', 'DD-MM-YYYY'), 2007);
insert into Student_History (History_ID, Student_Level, Start_Date, End_Date, Student_Code)
values (1017,3, TO_DATE('05-10-2024', 'DD-MM-YYYY'), NULL, 2007);



-- Insert data into Teaching_Staff_Courses table
-- Assign Computer Science department courses to staff
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (100, 1); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (100, 2); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (101, 3); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (104, 4); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (104, 5); 

-- Assign Information Technology department courses to staff
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (105, 6); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (114, 7); 

-- Assign Information System department courses to staff
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (106, 8); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (109, 9); 

-- Assign Medical Informatics department courses to staff
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (108, 10); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (108, 11); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (113, 12); 

-- Assign Artificial Intelligence department courses to staff
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (103, 13); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (103, 14); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (103, 15); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (103, 16); 

-- Assign Multi Media department courses to staff
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (112, 17); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (112, 18); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (112, 19);
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (112, 20);

-- Assign Software Engineering department courses to staff
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (110, 21); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (110, 22); 
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (110, 23);
insert into Teaching_Staff_Courses (Staff_ID, Course_ID) values (110, 24);



-- Insert data for Student_Courses
-- Insert data into Student_Courses for all students across all levels

-- Student 2001: 
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (1, 2001, 'Fall', 85, 2020); -- Level 1
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (6, 2001, 'Fall', 90, 2020);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (10, 2001, 'Spring', 88, 2021);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (2, 2001, 'Spring', 92, 2021);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (13, 2001, 'Fall', 87, 2021); -- Level 2
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (11, 2001, 'Fall', 85, 2021);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (7, 2001, 'Spring', 89, 2022);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (8, 2001, 'Spring', 91, 2022);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (14, 2001, 'Fall', 87, 2022); -- Level 3
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (12, 2001, 'Fall', 85, 2022);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (4, 2001, 'Spring', 89, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (22, 2001, 'Spring', 91, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (9, 2001, 'Fall', 97, 2023); -- Level 4 
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (5, 2001, 'Fall', 94, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (15, 2001, 'Spring', 89, 2024);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (21, 2001, 'Spring', 96, 2024);


-- Student 2002: 
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (1, 2002, 'Fall', 88, 2023); -- Level 1
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (23, 2002, 'Fall', 84, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (10, 2002, 'Spring', 88, 2024);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (2, 2002, 'Spring', 92, 2024);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (14, 2002, 'Fall', NULL, 2024); -- Level 2
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (4, 2002, 'Fall', NULL, 2024);


-- Student 2003: 
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (1, 2003, 'Fall', NULL, 2024); -- Level 1 (In Progress)
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (6, 2003, 'Fall', NULL, 2024);

-- Student 2004:
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (1, 2004, 'Fall', 83, 2023); -- Level 1
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (8, 2004, 'Fall', 86, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (6, 2004, 'Spring', 79, 2024);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (11, 2004, 'Spring', 80, 2024);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (9, 2004, 'Fall', Null, 2024); -- Level 2
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (2, 2004, 'Fall', Null, 2024);

-- Student 2005:
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (1, 2005, 'Fall', 85, 2021); -- Level 1
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (2, 2005, 'Fall', 87, 2021);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (10, 2005, 'Spring', 90, 2022);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (4, 2005, 'Spring', 88, 2022);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (13, 2005, 'Fall', 97, 2022); -- Level 2
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (11, 2005, 'Fall', 80, 2022);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (7, 2005, 'Spring', 89, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (8, 2005, 'Spring', 81, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (14, 2005, 'Fall', 93, 2023); -- Level 3
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (12, 2005, 'Fall', 85, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (3, 2005, 'Spring', 91, 2024);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (22, 2005, 'Spring', 90, 2024);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (5, 2005, 'Fall', null, 2024); -- Level 4 (In Progress)
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (6, 2005, 'Fall', NULL, 2024);

-- Student 2006: 
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (1, 2006, 'Fall', NULL, 2024); -- Level 1 (In Progress)
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (3, 2006, 'Fall', NULL, 2024);

-- Student 2007: 
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (1, 2007, 'Fall', 85, 2022); -- Level 1
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (6, 2007, 'Fall', 87, 2022);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (2, 2007, 'Spring', 95, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (4, 2007, 'Spring', 88, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (9, 2007, 'Fall', 97, 2023); -- Level 2
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (11, 2007, 'Fall', 90, 2023);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (7, 2007, 'Spring', 89, 2024);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (8, 2007, 'Spring', 81, 2024);
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (12, 2007, 'Fall', NULL, 2024); -- Level 3 (In Progress)
INSERT INTO Student_Courses (Course_ID, Student_Code, Semester, Grade, Register_Year) VALUES (22, 2007, 'Fall', NULL, 2024);
