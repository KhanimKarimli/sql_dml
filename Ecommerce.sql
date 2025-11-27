create database E_CommerceDB

use E_CommerceDB


create table Customers(
Id int primary key identity,
Name varchar(25) not null,
Email varchar(30) unique,
Phone varchar(11)
)

create table Categories(
Id int primary key identity,
Name varchar(25) not null,
Description varchar(100),
)

create table Products(
Id int primary key identity,
Name varchar(25) not null,
Email varchar(30) unique,
Description varchar(100),
Price decimal,
Category_id int foreign key references Categories(Id) 
)




create table Suppliers(
Id int primary key identity,
Name varchar(25) not null,
ContactInfo varchar(100),
)

create table ProductSuppliers(
Id int primary key identity,
Product_id int foreign key references Products(Id),
Supplier_id int foreign key references Suppliers(Id)
)

create table Orders(
Id int primary key identity,
OrderDate datetime2,
Status int,
Customer_id int foreign key References Customers(Id)
)

create table OrderItems(
Id int primary key identity,
Quentity int,
UnitPrice decimal,
Order_id int foreign key references Orders(Id),
Product_id int foreign key references Products(Id)
)