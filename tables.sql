create database E_CommerceDB

use E_CommerceDB


create table Customers(
Id int primary key identity,
Name varchar(25),
Email varchar(30),
Phone varchar(11)
)

create table Products(
Id int primary key identity,
Name varchar(25),
Email varchar(30),
Description varchar(100),
Price int,
Category_id int
)

create table Categories(
Id int primary key identity,
Name varchar(25),
Description varchar(100),
)

create table Suppliers(
Id int primary key identity,
Name varchar(25),
ContactInfo varchar(100),
)

create table ProductSuppliers(
Id int primary key identity,
Product_id int,
Supplier_id int
)

create table Orders(
Id int primary key identity,
OrderDate datetime,
Status varchar(25),
Customer_id int
)

create table OrderItems(
Id int primary key identity,
Quentity int,
UnitPrice int,
Order_id int,
Product_id int
)