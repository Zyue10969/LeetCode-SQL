# Write your MySQL query statement below
#对class进行分组，取其中student >= 5的分组
#根据题意student不能重复计数，加上distinct
select class from courses
group by class
having count(distinct student) >= 5;
