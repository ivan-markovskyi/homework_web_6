--Знайти список студентів у певній групі.
SELECT g."name" as group, s.fullname as student
FROM students s  
INNER JOIN "groups" g  ON g.id = s.group_id 
where g.id = 1