CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
Set M = N-1;
  RETURN (
      Select Distinct Salary
      from Employee
      order by Salary Desc
      limit 1 offset M     
  );
END
