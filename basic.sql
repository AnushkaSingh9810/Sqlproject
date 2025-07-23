use collage;
SELECT * FROM collage.college_student_management_data;
                                                        -- bacis level--
-- 1. List all students with their student_id, major, and GPA--
SELECT student_id, major, GPA FROM college_student_management_data;
--  2. Find the total number of students in each major.
SELECT major, COUNT(*) AS total_students
FROM college_student_management_data
GROUP BY major;
--  3. Get students who have a GPA greater than 3.5.
SELECT student_id,  GPA
FROM college_student_management_data
WHERE GPA > 3.5;
--  4. Show all students id with risk_level = 'High'.
select student_id
from  college_student_management_data
where risk_level = 'High';
--  5. List students who are currently Active in enrollment_status.
SELECT student_id, enrollment_status
from  college_student_management_data
where enrollment_status = 'Active';
--  6. Find distinct majors available in the dataset.
SELECT DISTINCT major
FROM college_student_management_data;
--  7. Display students whose gender is 'Female' and GPA is above 3.2.
SELECT student_id,  gender, GPA
FROM college_student_management_data
WHERE gender = 'Female' AND GPA > 3.2;


