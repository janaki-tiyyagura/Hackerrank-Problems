SELECT CONCAT(NAME,'(',SUBSTRING(Occupation,1,1),')') FROM OCCUPATIONS ORDER BY Name;
SELECT CONCAT('There are a total of ',COUNT(1),' ',LOWER(occupation),'s.') FROM OCCUPATIONS GROUP BY Occupation ORDER BY COUNT(1), Occupation;