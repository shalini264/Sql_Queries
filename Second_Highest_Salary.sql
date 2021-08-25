# Write your MySQL query statement below
Select (Select Distinct Salary 
From Employee
order by Salary DESC
LIMIT 1 OFFSET 1)
as SecondHighestSalary;
