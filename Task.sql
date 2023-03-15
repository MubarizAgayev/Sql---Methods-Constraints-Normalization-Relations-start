create database Course
use Course

create table Teachers(
  [Id] int primary key identity(1,1),
  [Name] nvarchar(50) not null,
  [Surname] nvarchar(50) not null,
  [Email] nvarchar(150) unique,
  [Age] int,
  [Salary] decimal
)

--insert into Teachers([Name],[Surname],[Email],[Age],[Salary])
--values('Ibrahim','Aliyev','ibrahim@gmail.ru',28,1500)




select * from Teachers where Age > (select avg(Age) from Teachers)

select * from Teachers where Salary between 1000 and 3000

select * from Teachers where substring(Email,charindex('@',[Email]) + 1,len(Email) - charindex(Email,1,charindex('@',Email))) = 'mail.ru'

select * from Teachers where left(Name,1) = 'c'

