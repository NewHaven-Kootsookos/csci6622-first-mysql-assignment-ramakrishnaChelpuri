use elmasri_company;

SELECT 
    p.Pname, d.Dname
FROM
    project AS p
        JOIN
    department AS d ON p.Dnum = d.Dnumber
WHERE
    Pnumber IN (SELECT Pno FROM works_on WHERE Essn IN (SELECT Essn FROM works_on GROUP BY Essn HAVING SUM(Hours) >= 20));
