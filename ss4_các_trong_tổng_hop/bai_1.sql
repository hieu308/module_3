select * 
from sub
where Credit = ( select max(Credit) from sub);

select *
from sub 
join Mark on sub.SubID = Mark.subID
where Mark = (select max(Mark) from Mark);

select student.StudentName,student.Address,avg(Mark) as average
from student
join Mark on student.StudentID = Mark.StudentID
group by student.StudentName,student.Address
order by average