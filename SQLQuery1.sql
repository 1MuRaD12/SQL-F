CREATE DATABASE Parfum

USE Parfum

CREATE TABLE Catagory(
Id int primary key identity ,
Name nvarchar(max)
)

insert into Catagory
valueS('Catagory 1'),
('Catagory 2'),
('Catagory 3'),
('Catagory 4')


CREATE TABLE Brand(
Id int primary key identity ,
BrandName nvarchar(max),
Caragory_Id int foreign key references Catagory(Id)
)

INSERT INTO Brand
VALUES('Brand 1',1),
('Brand 2',2),
('Brand 3',3),
('Brand 4',4)

CREATE TABLE Marka(
Id int primary key identity ,
Name nvarchar(max),
Brand_Id int foreign key references Brand(Id)
)

INSERT INTO Marka
VALUES('Ajmal ',1),
(' Alexandre J ',2),
('Armand Basi ',3),
('Attar Collection',4)

CREATE TABLE Product(
Id int primary key identity ,
Name nvarchar(max),
Price float,
Image nvarchar(max),
Color nvarchar(max),
Count int,
Marka_Id int foreign key references Marka(Id)
)

INSERT INTO Product
values('Hawaiian Breeze',150.1,'image1','black',5,1),
('The Majestic Vetiver ',250.2,'image2','blue',7,2),
('Wild Forest ',300.3,'image4','whithe',10,3),
('Al Rayhan ',450.4,'image','yellow',12,4)



CREATE view vw_mark_produc
as
select  p.Name as Name, p.Color as Color,p.Price as Price,p.Count as Count from Product as p
join Marka as m
on p.Marka_Id = m.Id

select * from vw_mark_produc

select SUM(Price) as Total from Product











