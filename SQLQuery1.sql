create database Restaurant

Use Restaurant

Create table Product(
Id int Primary Key Identity (1, 1),
Name Nvarchar(255),
Price decimal Not Null
)

Create table Category(
Id int Primary Key Identity(1000, 1),
Name Nvarchar(255),
)

Create table Menu(
Id int Primary Key Identity(2000, 1),
Name Nvarchar(255),
ProductId int Foreign Key References Product(Id),
CategoryId int Foreign Key References Category(Id)
)

Create table [Order] (
Id int Primary Key Identity(3000, 1),
IsPaid bit Not Null,
CreatedDate date Not Null
)

Create table ProductOrder(
Id int Primary Key Identity(4000, 1),
OrderId int Foreign Key References [Order](Id),
ProductId int Foreign Key References Product(Id)
)

Create table Receipt(
Id int Primary Key Identity(5000, 1),
Total decimal Not Null,
CreatedDate date
)

Insert into Product
	Values ('')