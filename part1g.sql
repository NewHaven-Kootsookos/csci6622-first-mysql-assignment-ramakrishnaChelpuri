use elmasri_company;

SELECT 
    de.Dname
FROM
    department AS de
WHERE
    de.Dnumber = (SELECT 
            dept.Dnumber
        FROM
            department AS dept,
            employee AS e,
            dependent AS d
        WHERE
            dept.Dnumber = e.Dno AND e.Ssn = d.Essn
        GROUP BY dept.Dnumber
        ORDER BY COUNT(d.Dependent_name) DESC
        LIMIT 1);
