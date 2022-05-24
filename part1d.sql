use elmasri_company;

SELECT 
    p.Pname, SUM(w.Hours) AS 'Total Working hours'
FROM
    works_on w
        INNER JOIN
    project p ON w.Pno = p.Pnumber
WHERE
    p.Plocation = 'Houston'
GROUP BY p.Pname
HAVING COUNT(w.Essn) > 2;
