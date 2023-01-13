--UC1
Create Database AddressBook

--UC2
Create Table Address_Book_Table
(
	FirstName varchar(50) not null,
	LastName varchar(100) not null,
	Address varchar(300) not null,
	City varchar(80) not null,
	State varchar(100) not null,
	ZipCode int not null,
	PhoneNumber bigint not null unique,
	Email varchar(200) not null unique
)
Select * From Address_Book_Table

--UC3
Insert into Address_Book_Table (FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email)
values('PETER','ENGLAND','Somewhere','New York','USA',402034,9009001234,'peter@gmail.com')
Insert into Address_Book_Table (FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email)
values('JON','SHNOW','NORTH','Washington DC','USA',413508,9009005678,'jon@gmail.com')
Insert into Address_Book_Table (FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email) 
values('ZOOM', 'LORD', 'Universe', 'MiddleEast', 'UK', 400002, 9099990999,'@gmail.com')
Insert into Address_Book_Table (FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,Email) 
values('Barack','Obama','Somewhere in America','Manhatten','USA',413508,90090058,'ObamaB@gmail.com')

--UC4
Update Address_Book_Table Set FirstName = 'JULLY', LastName = 'Tital' Where FirstName = 'Barack'
Update Address_Book_Table Set PhoneNumber = 9009016789, Email = 'jully.@gmail.com' Where FirstName = 'JULLY'

--UC5
Delete Address_Book_Table Where FirstName = 'ZOOM'

--UC6
Select * from Address_Book_Table Where City = 'New York' or  State = 'USA'
Select * from Address_Book_Table Where City = 'Washington DC' and  State = 'USA'

--UC7
Select Count(*) As Size from Address_Book_Table Where City = 'New York' or  State = 'USA'
Select Count(*) As Size from Address_Book_Table Where City = 'New York' and  State = 'USA'

--UC8
Select * from Address_Book_Table Where City = 'New York' Order By FirstName 

--UC9
ALTER TABLE Address_Book_Table ADD AdressBookName varchar(50), Type varchar(20)
UPDATE  Address_Book_Table SET AdressBookName = 'FamilyAddressBook', Type = 'Family' 
WHERE FirstName ='JON' or FirstName='JON1'
UPDATE  Address_Book_Table SET AdressBookName = 'FriendAddressBook', Type = 'Friend' 
WHERE FirstName ='PETER' or FirstName='Donald'
Update Address_Book_Table SET AdressBookName = 'ProfessionAddressBook', Type = 'Profession'
WHERE FirstName = 'JULLY' or FirstName = 'Elon'

--UC10
Select COUNT(*) as Size, Type from Address_Book_Table group by Type;
Select count(*)as CountAbNames, AdressBookName  from Address_Book_Table group by AdressBookName;

--UC11
Insert into Address_Book_Table(FirstName, LastName, Address, City, State, ZipCode, PhoneNumber, Email, AdressBookName, Type) 
Values('Elon','Musk','TeslaInc','California','USA',413508,88562365122,'musk_elon@gmail.com','ProfessionAddressBook','Profession')
select * from Address_Book_Table

--UC12
--Create AddressBook Table
CREATE TABLE AddressBook
(
AddressBookId INT IDENTITY(1,1) PRIMARY KEY,
AddressBookName VARCHAR(30)
)

--Table
CREATE TABLE Person
(
PersonId INT IDENTITY(1,1) PRIMARY KEY,
AddressBookId INT FOREIGN KEY REFERENCES AddressBook(AddressBookId),
FirstName varchar(30),
LastName varchar(30),
Address varchar(30),
City varchar(30),
StateName varchar(30),
ZipCode int,
PhoneNumber bigint,
EmailId varchar(30)
)