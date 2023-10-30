-- Знайти середній бал, який ставить певний викладач зі своїх предметів
SELECT t.id ,t.fullname, ROUND(AVG(gr.grade), 2) AS average_grade
FROM teachers t 
JOIN subjects s  ON t.id  = s.teacher_id 
JOIN grades gr ON s.id = gr.subject_id 
JOIN subjects subj ON gr.subject_id = subj.id
WHERE t.id  = '1'
group by t.id