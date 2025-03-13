-- Create Departments table
create table Departments(
    Department_ID number(5) Primary Key,
    Department_Name varchar2(30) Not Null Unique,
    Manager_ID number(5) Not Null
    -- constraint Manager_ID_FK Foreign Key (Manager_ID) references Teaching_Staff (Staff_ID)
);

-- Create Teaching_Staff table
create Table Teaching_Staff (
    Staff_ID number(5) Primary Key,
    First_Name  varchar2(25) Not Null,
    Last_Name varchar2(25) Not Null,
    Staff_Role  varchar2(25) Not Null,
    National_ID varchar2(14) Not Null Unique,
    Date_Of_Birth date Not Null,
    Hire_Date date Not Null,
    Salary number(8) Not Null,
    Phone_Number varchar2(11) ,
    Email varchar2(25) Not Null,
    Department_ID number(5) ,
    constraint Department_ID_FK Foreign Key (Department_ID) references Departments (Department_ID) ON DELETE set null
);

-- Add foreign key to Departments table
alter table Departments add constraint Manager_ID_FK Foreign Key (Manager_ID) references Teaching_Staff (Staff_ID) ;

-- Create Students table
create table Students(
    Student_Code number(5) Primary Key,
    First_Name varchar2(25) Not Null,
    Last_Name varchar2(25) Not Null,
    Email varchar2(25) Not Null Unique,
    Date_Of_Birth Date ,  
    National_ID varchar2(14) Not Null Unique,
    Gender varchar2(10),
    Phone_Number varchar2(11),
    GPA number(4,3) Not Null,
    Student_Level number(1) Not Null,
    Total_credits_hours number(3),
    Enrollment_Date date Not Null,
    Department_ID number(5) ,
    constraint Dept_Stud_ID_FK Foreign Key (Department_ID)  references Departments (Department_ID)  ON DELETE set null
); 
ALTER TABLE Students ADD CONSTRAINT check_gpa CHECK (GPA BETWEEN 0 AND 4);
alter table students drop column gpa;

-- Create Courses table
create Table Courses (
    Course_ID  number(5) Primary Key,
    Course_Name varchar2(50) Not Null Unique,
    Credits_Hours number(3) Not Null,
    Department_ID number(5) ,
    constraint Dept_Course_ID_FK Foreign Key (Department_ID) references Departments (Department_ID)  ON DELETE set null
);

-- Create Student_History table
create Table Student_History(
    History_ID number(5) Primary Key,
    Student_Level number(1) Not Null,
    Start_Date date Not Null,
    End_Date date,
    Student_Code number(5) Not Null,
    constraint Student_Code_FK Foreign Key (Student_Code) references Students (Student_Code) 
);


-- Create Teaching_Staff_Courses table
create Table Teaching_Staff_Courses (
    Staff_ID number(5) ,
    Course_ID  number(5) ,
    constraint Staff_Course_PK Primary Key (Staff_ID, Course_ID),
    constraint Staff_ID_FK Foreign Key (Staff_ID) references Teaching_Staff (Staff_ID) ON DELETE CASCADE,
    constraint Course_ID_FK Foreign Key (Course_ID) references Courses (Course_ID) ON DELETE CASCADE
);

-- Create Student_Courses table
create  Table Student_Courses (
    Course_ID  number(5) ,
    Student_Code number(5),
    Semester varchar2(20) ,
    Grade number(3) ,
    Register_Year NUMBER(4) ,
    constraint Student_Course_PK Primary Key (Course_ID, Student_Code,Register_Year,Semester),
    constraint Student_Course_FK Foreign Key (Student_Code) references Students (Student_Code) ON DELETE CASCADE,
    constraint Course_Stud_ID_FK Foreign Key (Course_ID) references Courses (Course_ID) ON DELETE CASCADE
);
ALTER TABLE Student_Courses ADD CONSTRAINT check_grade CHECK (Grade BETWEEN 0 AND 100);
ALTER TABLE Student_Courses ADD CONSTRAINT check_semester CHECK (Semester IN ('Fall', 'Spring', 'Summer'));


