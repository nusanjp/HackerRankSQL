/*
Write a query that prints a list of employee names (i.e.: the name attribute) 
from the Employee table in alphabetical order.

Input Format
The Employee table containing employee data for a company is described as follows:

+-------------+------------+
| Column      |   Type     |
+-------------+------------+
| EMPLOYEE_ID | INTEGER    |
| NAME        | STRING     |
| MONTHS      | INTEGER    |
| SALARY      | INTEGER    |
+-------------+------------+

where employee_id is an employee's ID number, name is their name, 
months is the total number of months they've been working for the company,
and salary is their monthly salary.

Sample Output

Angela
Bonnie
Frank
Joe
Kimberly
Lisa
Michael
Patrick
Rose
Todd

Solution;
--------
*/
SELECT Name
FROM EMPLOYEE
ORDER BY Name;