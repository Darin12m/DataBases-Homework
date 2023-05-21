Create database HomeWork01

use HomeWork01

Create table Students
(
	Id int identity (1,1),
	FirstName nvarchar (50) not null,
	LastName nvarchar (50) not null,
	DateOfBirth datetime2,
	EnroledDate datetime2,
	Gender nvarchar(1),
	NationalIdNumber char(15),
	StudentCardNumber char (10)
)

create table Teachers
(
	Id int identity (1,1) ,
	FirstName nvarchar (50) not null,
	LastName nvarchar(50) not null,
	DateOfBirth datetime2,
	AcademicRank nvarchar (100) not null,
	HireDate datetime2
)

create table Grades
(
	Id int identity (1,1),
	StudentId int not null,
	CourseId int not null,
	TeacherId int not null,
	Grade int ,
	Comment nvarchar(MAX),
	CreatedDate datetime2
)

create table Courses
(
	Id int identity(1,1),
	[Name] nvarchar (50),
	Credit decimal(18,2),
	AcademicYear int,
	Semester nvarchar(20)
)

create table AchievementTypes
(
	Id int identity (1,1),
	[Name] nvarchar (50),
	[Description] nvarchar (MAX),
	ParticipationRate decimal (18,2)
)

create table GradeDetails
(
	Id int identity (1,1),
	GradeId int not null,
	AchivmentTypeId int not null,
	AchivmentPoints decimal (18,2),
	AchivmentMaxPoints decimal(18,2),
	AchievementDate datetime2
)