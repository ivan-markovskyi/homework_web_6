--Список курсів, які певному студенту читає певний викладач.
select distinct s.id , s."name" as subject
from teachers t 
inner join subjects s on s.teacher_id = t.id 
inner join grades g on g.subject_id = s.id 
inner join students s2 on s2.id = g.student_id 
where s2.id = 1 and t.id = 1