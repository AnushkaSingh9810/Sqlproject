use collage;
                  -- Advanced  level--
--  15. Identify students with the highest video_completion_rate in each major.
SELECT s.student_id,  s.major, s.video_completion_rate
FROM college_student_management_data s
JOIN (
    SELECT major, MAX(video_completion_rate) AS max_rate
    FROM college_student_management_data
    GROUP BY major
) AS m
ON s.major = m.major AND s.video_completion_rate = m.max_rate;

--  16. Find the top 3 students with the longest average session duration.
SELECT student_id,  avg_session_duration_minutes
FROM college_student_management_data
ORDER BY avg_session_duration_minutes DESC
LIMIT 3;

--  17. Find students with a GPA lower than the average GPA of the dataset.
SELECT student_id,  GPA
FROM college_student_management_data
WHERE GPA < (
    SELECT AVG(GPA) FROM college_student_management_data
);

--  18. List students who are above average in both GPA and avg_course_grade.

SELECT student_id,  GPA, avg_course_grade
FROM college_student_management_data
WHERE GPA > (SELECT AVG(GPA) FROM college_student_management_data)
  AND avg_course_grade > (SELECT AVG(avg_course_grade) FROM college_student_management_data);

--  19. Get the count of students grouped by gender and risk_level.

SELECT gender, risk_level, COUNT(*) AS total_students
FROM college_student_management_data
GROUP BY gender, risk_level;


--  20. Find students who are highly engaged: attendance_rate, assignment_submission_rate, and video_completion_rate - all above 0.9

SELECT student_id,  attendance_rate, assignment_submission_rate, video_completion_rate
FROM college_student_management_data
WHERE attendance_rate > 0.9
  AND assignment_submission_rate > 0.9
  AND video_completion_rate > 0.9;
