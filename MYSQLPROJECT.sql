USE university_schema;

-- most courses in common
SELECT *
FROM professors p
RIGHT JOIN students s
ON p.professors_id=students_user_id
ORDER BY students_enrolled DESC;

-- GROUP students by the courses they are enrolled in 
SELECT *
FROM courses c
RIGHT JOIN students s
ON c.courses_id=students_user_id
ORDER BY students_enrolled DESC;

-- TOP grades by each student
SELECT *
FROM students s
JOIN grades g
ON s.students_user_id= g.grades_id
ORDER BY grades ASC;


-- AVG grade given out
SELECT *
FROM courses c
JOIN professors p
ON c.courses_id=p.professors_id
JOIN grades g
ON g.grades_id=p.professors_id;

-- Summary report with most challenging course 
SELECT * 
FROM professors p
JOIN courses c
ON p.professors_students_user_id = c.courses_students_user_id
JOIN students s
ON s.students_user_id =c.courses_students_user_id
JOIN grades g
ON g.grades_students_user_id= c.courses_students_user_id
ORDER BY grades DESC;

SELECT professors_id, COUNT(professors_id)
FROM professors
GROUP BY professors_id;




SELECT *
FROM grades_id;





