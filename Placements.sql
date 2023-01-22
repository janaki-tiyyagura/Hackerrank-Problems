SELECT studentname FROM (SELECT 
students.id AS student, 
students.name AS studentname,
packages.salary as studentsalary,
friends.friend_id AS  friend
FROM students
LEFT JOIN packages
ON students.id=packages.id
LEFT JOIN friends
ON students.id=friends.id) temp
LEFT JOIN packages
ON temp.friend=packages.id
WHERE temp.studentsalary<packages.salary
ORDER BY packages.salary 