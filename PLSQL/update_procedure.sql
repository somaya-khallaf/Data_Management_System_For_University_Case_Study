create or replace procedure update_student(v_STUDENT_CODE number, v_FIRST_NAME varchar2, v_LAST_NAME varchar2, v_EMAIL varchar2, v_DATE_OF_BIRTH date, v_NATIONAL_ID varchar2,
v_GENDER varchar2,v_PHONE_NUMBER varchar2,v_STUDENT_LEVEL varchar2, v_TOTAL_CREDITS_HOURS number , v_ENROLLMENT_DATE date,   v_DEPARTMENT_ID number)
is
begin
        update students 
        set  FIRST_NAME=v_FIRST_NAME, LAST_NAME=v_LAST_NAME, EMAIL=v_EMAIL, NATIONAL_ID=v_NATIONAL_ID, STUDENT_LEVEL=v_STUDENT_LEVEL,
                TOTAL_CREDITS_HOURS=v_TOTAL_CREDITS_HOURS,ENROLLMENT_DATE=v_ENROLLMENT_DATE, DATE_OF_BIRTH=v_DATE_OF_BIRTH, 
                GENDER=v_GENDER, PHONE_NUMBER=v_PHONE_NUMBER, DEPARTMENT_ID=v_DEPARTMENT_ID
        where STUDENT_CODE=v_STUDENT_CODE;
end;
show errors;

select * from students where STUDENT_CODE=2001;
set serveroutput on
declare
begin
        update_student(2001,'Somaya','Khallaf','somaya98@gmail.com',to_date('7-10-2002','dd-mm-yyyy'),'30207078812424','Female','01123742094','Level 4',0,to_date('08-10-2020','dd-mm-yyyy'),6);
end;
select * from students where STUDENT_CODE=2001;
