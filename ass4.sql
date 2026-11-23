create database school;
use school;
select *from student;
select count(*) as total_record from student;
select avg(grade) as average from student;
select max(grade) as highest_grade from student;
select min(grade) as lowest_grade from student;
select count(distinct StudentId) as total_student from student;
select CourseID,avg(grade)  as average_grade from student group by CourseID ;
select Department ,count(StudentID) as num_of_student from student
group by Department; 
select CourseID,max(grade) as maximum_grade from
student group by CourseID;
select Department ,min(grade) as minumum_grade 
from student group by Department;

select StudentID ,count(distinct CourseID) from student
group by StudentID;
select CourseID ,avg(grade) as average_grade 
from student group by CourseID having average_grade >75;
select StudentID from student group by StudentID
having count(distinct CourseID)>3 ;
select Department,avg(grade) as average_grade from student group by 
Department having avg(grade) <65;
select StudentID ,max(grade) as max_grade 
from student group by studentID having max(grade)=100;
select CourseID ,count(StudentID) from student 
group by CourseID having count(StudentID)>20;

select StudentID from student 
group by StudentID having count( distinct CourseID)>=4 and avg(grade)>80;
select  Department from student group by Department
having max(grade)>=2*avg(grade);
select CourseID from student group by CourseID
having avg(grade)> (select avg(grade) from student);
select StudentID from student 
group by StudentID 
having min(grade)>70;