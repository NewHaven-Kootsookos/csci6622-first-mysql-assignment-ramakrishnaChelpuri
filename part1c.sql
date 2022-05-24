use elmasri_company;

SELECT 
    CONCAT(e.Fname,' ', e.Minit,' ',e.Lname) AS Employee,
    CONCAT(ee.Fname,' ',ee.Minit,' ',ee.Lname) AS Supervisor
FROM
    employee e
        JOIN
    employee ee ON e.Super_ssn = ee.Ssn
ORDER BY e.Lname;
