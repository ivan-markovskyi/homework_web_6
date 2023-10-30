--Знайти оцінки студентів у окремій групі з певного предмета.

SELECT s.id , s.fullname as student  , gr.grade 
FROM groups g
JOIN students s ON g.id = s.group_id
JOIN grades gr ON s.id = gr.student_id
JOIN subjects subj ON gr.subject_id = subj.id
WHERE subj.id = '1' and g.id = '1'

