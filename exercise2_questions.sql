SELECT *
FROM rooms
WHERE capacity > 100;

SELECT *
FROM courses
WHERE start_time = (SELECT MIN(start_time) FROM courses);

SELECT c.crn, c.name
FROM courses AS c, enrolls AS e, majors AS m, departments AS d
WHERE d.name = "BIF" and d.id = m.dept_id and m.student_id = e.student_id and e.course_crn and e.course_crn = c.crn;

SELECT *
FROM students
WHERE id NOT IN (SELECT DISTINCT student_id FROM enrolls);

SELECT COUNT(s.id)
FROM students AS s, enrolls AS e, courses AS c
WHERE c.name = 'CSC275' and c.crn = e.course_crn and e.student_id = s.id;