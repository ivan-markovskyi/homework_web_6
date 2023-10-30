-- Знайти середній бал у групах з певного предмета.
SELECT g.id , g."name" , ROUND(AVG(gr.grade), 2) AS average_grade
FROM groups g
JOIN students s ON g.id = s.group_id
JOIN grades gr ON s.id = gr.student_id
JOIN subjects subj ON gr.subject_id = subj.id
WHERE subj.id = '1'
GROUP BY g.id
ORDER BY average_grade desc;
