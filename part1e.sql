use elmasri_company.sql

SELECT 
    Ssn, Fname, Minit, Lname
FROM
    Employee
WHERE
    Dno = (SELECT Dno FROM Employee WHERE Salary = (SELECT MAX(Salary) FROM Employee));
