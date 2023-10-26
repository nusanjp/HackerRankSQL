/*

Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

Input Format
The EMPLOYEES table is described as follows:


+-------------+------------+
| Column      |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| NAME        | STRING     |
| SALARY      | INTEGER    |
+-------------+------------+

Note: Salary is per month.

Constraints : 1000 < Salary < 10 power 5.
Sample Input

Sample Output
2061

Explanation
The table below shows the salaries without zeros as they were entered by Samantha:
*/