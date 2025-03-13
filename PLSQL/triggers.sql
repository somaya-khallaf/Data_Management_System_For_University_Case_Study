-- prevent student from update level if he not passed specific credits hours
CREATE OR REPLACE TRIGGER prevent_level_update
BEFORE UPDATE OF STUDENT_LEVEL ON STUDENTS
FOR EACH ROW
DECLARE
    total_CREDITS_HOURS NUMBER;
BEGIN
    -- Calculate total credit hours for the student
    total_CREDITS_HOURS := calculate_total_CREDITS_HOURS(:OLD.STUDENT_CODE);

    -- Validation logic based on credit hours and new level
    IF total_CREDITS_HOURS BETWEEN 0 AND 10 AND :NEW.STUDENT_LEVEL != 'Level 1' THEN
        RAISE_APPLICATION_ERROR(-20465, 'You are not allowed to update level. Insufficient credits for Level 1.');
    ELSIF total_CREDITS_HOURS BETWEEN 11 AND 20 AND :NEW.STUDENT_LEVEL != 'Level 2' THEN
        RAISE_APPLICATION_ERROR(-20465, 'You are not allowed to update level. Insufficient credits for Level 2.');
    ELSIF total_CREDITS_HOURS BETWEEN 21 AND 30 AND :NEW.STUDENT_LEVEL != 'Level 3' THEN
        RAISE_APPLICATION_ERROR(-20465, 'You are not allowed to update level. Insufficient credits for Level 3.');
    ELSIF total_CREDITS_HOURS BETWEEN 31 AND 40 AND :NEW.STUDENT_LEVEL != 'Level 4' THEN
        RAISE_APPLICATION_ERROR(-20465, 'You are not allowed to update level. Insufficient credits for Level 4.');
    END IF;
END ;
-- Verify for syntax errors
SHOW ERRORS;
