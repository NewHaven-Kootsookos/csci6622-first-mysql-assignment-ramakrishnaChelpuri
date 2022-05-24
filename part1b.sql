use elmasri_company;

SELECT 
    e.Fname, e.Lname, e.Address
FROM
    employee AS e
JOIN
    dependent AS d ON e.Ssn = d.Essn
WHERE
    d.Relationship = 'son'
AND d.Relationship !='Daughter';
