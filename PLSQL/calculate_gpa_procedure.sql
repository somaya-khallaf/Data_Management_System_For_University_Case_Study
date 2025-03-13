-- Function to calculate the total credit hours for a given student
create or replace function calculate_total_CREDITS_HOURS(v_STUDENT_CODE number) 
return number
is 
    total_CREDITS_HOURS number;
begin
    select sum(CREDITS_HOURS) into total_CREDITS_HOURS 
    from STUDENT_COURSES sc join courses c on SC.COURSE_ID=C.COURSE_ID  where grade is not null and STUDENT_CODE = v_STUDENT_CODE;
    
    -- If no courses with grades are found, set total_CREDITS_HOURS to 0
    if total_CREDITS_HOURS IS NULL THEN
        total_CREDITS_HOURS := 0;
    end if;
    return  total_CREDITS_HOURS;

end ;
show errors;

-- Query to display each student's code along with their total credit hours
select student_code , calculate_total_CREDITS_HOURS(student_code) as "Total Credits Hours" from students;

-- ++++++++++++++++++++++++++++++++++++++++++++++-

-- Function to calculate grade points based on a numeric grade
create or replace function show_grade_point(v_grade number) 
return number
is 
        v_grade_point number;
begin
        
        -- Check the grade range and assign the corresponding grade point
        if v_grade < 50 or v_grade IS NULL then 
                v_grade_point := 0;
        elsif v_grade < 55 then 
                v_grade_point := 1.4;
        elsif v_grade < 60 then 
                v_grade_point := 1.7;
        elsif v_grade < 65 then 
                v_grade_point := 2.0;
        elsif v_grade < 70 then 
                v_grade_point := 2.3;
        elsif v_grade < 75 then 
                v_grade_point := 2.6;
        elsif v_grade < 80 then 
                v_grade_point := 2.8;
        elsif v_grade < 85 then 
                v_grade_point := 3.0;
        elsif v_grade < 90 then 
                v_grade_point := 3.3;
        elsif v_grade < 95 then 
                v_grade_point := 3.7;
        else
                v_grade_point := 4;     
        end if;      
    return  v_grade_point;

end ;
show errors;

-- Query to display each student's grade and corresponding grade point
select GRADE , show_grade_point(GRADE) as "Grade Point"from STUDENT_COURSES;


-- Procedure to calculate a student's GPA
create or replace procedure calculate_student_gpa(v_student_gpa out number,v_STUDENT_CODE number )
is
        -- Cursor to fetch grades and credit hours for the specified student
        cursor student_grade is
                select SC.GRADE , C.CREDITS_HOURS
                from STUDENT_COURSES SC 
                inner join courses C on SC.COURSE_ID=C.COURSE_ID and SC.STUDENT_CODE=v_STUDENT_CODE and SC.GRADE is not null ;
        v_grade_gpa number(4,3);    
        v_gpa number := 0;    
        
        -- Total credit hours for the student (calculated using a separate function)
        total_CREDITS_HOURS number(3) := calculate_total_CREDITS_HOURS (v_STUDENT_CODE);
begin
        for student_grade_record in student_grade loop
                -- Calculate the GPA for the current grade
                v_grade_gpa := show_grade_point(student_grade_record.GRADE);
                v_gpa := v_gpa + (student_grade_record.CREDITS_HOURS * v_grade_gpa );          
        end loop;
                
        -- Calculate the final GPA by dividing total grade points by total credit hours            
        if total_CREDITS_HOURS > 0 then
                v_student_gpa := v_gpa / total_CREDITS_HOURS;
        else
                v_student_gpa := null; 
        end if; 
exception
    when OTHERS then
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        v_student_gpa := null;
end;
show errors;

set serveroutput on
declare
        v_student_gpa number(4,3);
begin
         calculate_student_gpa(v_student_gpa ,2001 );
         if v_student_gpa = null then 
                DBMS_OUTPUT.PUT_LINE(' No GPA calculated.');
         else
                DBMS_OUTPUT.PUT_LINE('GPA = '||v_student_gpa);
         end if;           
end;