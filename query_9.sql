-- Знайти список курсів, які відвідує студент.
select distinct s.id , s."name" as subject
from subjects s 
inner join grades g on s.id = g.subject_id 
inner join students s2 on g.student_id = s2.id 
where s2.id = 1
