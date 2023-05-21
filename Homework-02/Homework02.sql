use Homework01

select*from Student
where FirstName = 'Antonio'

select*from Student
where DateOfBirth > '01.01.1999'

select*from Student
where LastName like 'J%' 
and 
EnrolledDate >= '01.01.1998' 
and 
EnrolledDate <= '01.31.1998'


select*from Student
Order by FirstName asc


select LastName from Teacher
union
select lastname from Student

ALTER TABLE Grade
ADD CONSTRAINT FK_Grade_Student
Foreign Key(StudentId) references Student(Id)

Alter table Grade
Add constraint FK_Grade_Course
Foreign key (CourseId) references [Grade](id)

Alter table Grade
Add constraint FK_Grade_Teacher
Foreign key(TeacherId) references [Teacher](id)


Alter table GradeDetails
Add constraint FK_GradeDetails_Grade
Foreign key(GradeId) references [Grade](Id)

Alter table GradeDetails
Add constraint FK_GradeDetails_AchievementType
Foreign key(AchievementTypeId) references [AchievementType](id)