# Write your MySQL query statement below
Select d1.Name as Department,e1.Name as Employee,e1.Salary
from Department d1 join
(Select DepartmentId,Name,Salary,dense_rank()
over (
partition by DepartmentId
order by Salary Desc
) as 'rank_' from Employee)as e1
on e1.DepartmentId=d1.Id
where e1.rank_<=3;
