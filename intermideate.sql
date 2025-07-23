use collage ;
--  Intermediate Level --

 -- 8. Calculate the average GPA for each enrollment_status.
 
 select avg(GPA) as avg_gpa 
 from college_student_management_data
 group by  enrollment_status;
 
--  9. Find the top 5 students with the highest avg_course_grade.

SELECT student_id, avg_course_grade
FROM college_student_management_data
ORDER BY avg_course_grade DESC
LIMIT 5;

--  10. List students whose attendance_rate is below 0.8 and assignment_submission_rate is below 0.7.

SELECT student_id, avg_course_grade
FROM college_student_management_data
where attendance_rate <0.8 and  assignment_submission_rate < 0.7;

--  11. Count the number of students in each risk_level category.
SELECT risk_level, COUNT(*) AS total_students
FROM college_student_management_data
GROUP BY risk_level;

--  12. Sort students by assignment_submission_rate in descending order.
SELECT student_id,  assignment_submission_rate
FROM college_student_management_data
ORDER BY assignment_submission_rate DESC;

--  13. Find the average course_load per major.
SELECT major, AVG(course_load) AS avg_course_load
FROM college_student_management_data
GROUP BY major;


--  14. Display students who have more than 30 lms_logins_past_month
SELECT student_id,  lms_logins_past_month
FROM college_student_management_data
WHERE lms_logins_past_month > 30;

