# Write your MySQL query statement below
#排名即为当前Score>=所有Score的去重复的记录数
select 
    Score, (select count(distinct Score) from Scores
           where Score >= s.Score) as Rank
from Scores as s
order by Score desc;
