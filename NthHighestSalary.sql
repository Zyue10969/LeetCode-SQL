CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    set N = N - 1; #这一步讲N - 1这是因为列名是从0开始计数的，同时别忘了";"
  RETURN (
      # Write your MySQL query statement below.
      select ifnull( (select distinct Salary from Employee order by Salary desc limit N, 1), null )
  );
END
