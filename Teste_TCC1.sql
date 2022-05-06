create database MyCompany;

use MyCompany;

create table Users(
UserID int identity primary key,
LoginName nvarchar (100) unique not null,
Password nvarchar (100) not null,
FirtName nvarchar (100) not null,
LastName nvarchar (100) not null,
Position nvarchar (100) not null,
Email nvarchar (150) not null
);

drop table Users;

insert into Users (LoginName, Password, FirtName, LastName, Position, Email) values ('admin', 'admin', 'Willam', 'Castro', 'Administrador', 'willam.castro@outlook.com');
insert into Users (LoginName, Password, FirtName, LastName, Position, Email) values ('Ben', 'abc123456', 'Benjamin', 'Thompson', 'Manager', 'willamsouzacastro@gmail.com');
insert into Users (LoginName, Password, FirtName, LastName, Position, Email) values ('Kathy', 'abc123456', 'Kathrine', 'Smith', 'CFO', 'willamsouzacastro@gmail.com');

select * from users;

declare @user nvarchar(100)='admin';
declare @pass nvarchar(100)='admin';
select * from Users where LoginName = @user and Password = @pass; 
select * from Users where LoginName = @user and Password = @pass;