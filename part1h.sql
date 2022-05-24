use elmasri_company;

SELECT 
    dl.Dlocation
FROM
    dept_locations AS dl
WHERE
    dl.Dnumber = (SELECT 
            p.Dnum
        FROM
            works_on AS w,
            project AS p
        WHERE
            w.Pno = p.Pnumber
        GROUP BY p.Dnum
        ORDER BY SUM(w.Hours)
        LIMIT 1);
