SELECT *
FROM rooms
WHERE capacity > 100;

SELECT *
FROM courses
WHERE start_time = (SELECT MIN(start_time) FROM courses);