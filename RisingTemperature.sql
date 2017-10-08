# Write your MySQL query statement below
#用join语句联合Weather自身
#用datediff()函数返回时间差
select w1.Id as Id
from Weather as w1
join Weather as w2
on datediff(w1.Date, w2.Date) = 1 and w1.Temperature > w2.Temperature;
