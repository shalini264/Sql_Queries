Select d1.Name as Department,e1.Name as Employee,e1.Salary as Salary
from Employee e1 join Department d1
on e1.DepartmentId = d1.Id
where (e1.DepartmentID,e1.Salary) in
 (Select DepartmentId,max(Salary)
 from Employee
 group by DepartmentId);
