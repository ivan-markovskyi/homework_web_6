--Знайти які курси читає певний викладач.
SELECT t.fullname as teacher, s."name" as subject
FROM teachers t  
INNER JOIN subjects s  ON t.id = s.teacher_id 
where t.id = 1
