create database Homework01
use Homework01


create table Students
(
	Id int identity(1,1),
	FirstName nvarchar(100) not null,
	LastName nvarchar(100) not null,
	DateOfBirth datetime2,
	 EnrolledDate datetime2,
	Gender nchar(1),
	NationalIdNumber char(15),
	StudentCardNumber char(10),
)




create table Teacher
(
	Id int identity(1,1),
	FirstName nvarchar(100) not null,
	LastName nvarchar(100) not null,
	DateOfBirth datetime2,
	AcademicRank nvarchar(100) not null,
	HireDate datetime2,
)

create table Grades
(
	Id int identity(1,1),
	StudentId int not null,
	CourseId int not null,
	TeacherId int not null,
	Grade int,
	Comment nvarchar(MAX),
	CreatedDate datetime2
	
)

create table Courses
(
	Id int identity(1,1),
	[Name] nvarchar(255) not null,
	Credit decimal(18,2),
	AcademicYear int,
	Semester varchar(20)
)

create table GradeDetails
(
	Id int identity(1,1),
	GradeId int not null,
	AchievementTypeId int not null,
	AchievementPoints decimal(18,2),
	AchievementMax decimal(18,2),
	AchievementDate datetime2
)

create table AchievementTypes
(
Id int identity(1,1),
[Name] nvarchar(255) not null,
[Description] nvarchar(MAX),
ParticipationRate decimal(18,2)
)
-


Alter table Student
Add primary key (Id);

Alter table Teacher
Add primary key (Id);

Alter table GradeDetails
Add primary key (Id);

Alter table Grade
Add primary key (Id);

Alter table Course
Add primary key (Id);

Alter table AchievementType
Add primary key (Id);


