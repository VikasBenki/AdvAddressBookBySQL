-------UC1--CreateAddressBook DAtaBase----
Create Database AddressBookDB
Use AddressBookDB

----UC2---Create AdressBook table in the database-----
Create table AddressBook_Table
(
FirstName varchar(100),
LastName varchar(100),
Address varchar(100),
City varchar(100),
State varchar (100),
Zip bigint,
PhoneNumber bigint,
Email varchar(100)
);
select * from addressBook_Table;

-----UC3-----Abiity to insert new contacts to addressbook--
insert into AddressBook_Table(FirstName,LastName, Address, City,State, Zip, PhoneNumber, Email) Values
('Vikas', 'Benki', 'thalak', 'challakere', 'karnataka', 577522, 8660683485, 'vikasmsbenki@gmail.com'),
('karthik', 'Benki', 'clk', 'challakere', 'karnataka',577543, 9448575321, 'karthik@gmail.com'),
('Manoj', 'Benki', 'mnk', 'challakere', 'karnataka', 560059, 14325698799, 'manoj@gmail.com'),
('Mouna', 'Benki', 'thalak', 'challakere', 'karnataka', 576522, 2324582235, 'mouna@gmail.com');

---------------UC4------Ability to edit Existing Contact Details using name ------
update AddressBook_Table set PhoneNumber = 9906991325 where FirstName ='manoj';
update AddressBook_Table set PhoneNumber = 2323524689 where FirstName ='karthik';

------UC5---Ability to delete contact in adress book by name----
delete from AddressBook_Table where FirstName = 'Mouna' 
select * from AddressBook_Table;

---------UC6---Retrive person belonging to the city or state from adress---
select * from AddressBook_Table where City = 'challakere' or State = 'Karnataka';

--UC7-- Size of AddressBook by city and state 
select COUNT(*) as StateCount, State from AddressBook_Table group by State;
select COUNT(*) as CityCount, City from AddressBook_Table group by City;

--UC8-- Get Sorted entries alphabeticaly by first name
select * from AddressBook_Table order by FirstName;

--UC9-- Identify each addressboook with name and type 
alter table AddressBook_Table add ContactType varchar(100) not null default 'Dude';
update AddressBook_Table set ContactType='Family' where FirstName='manoj';
select * from AddressBook_Table;


--UC10-- Get number of contact persons count by type
select COUNT(ContactType) as TypeCount from AddressBook_Table group by ContactType;

--UC11-- Add person to friend and family
insert into AddressBook_Table(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email, ContactType)
values
('Virat', 'Kohli', 'RCB', 'Bangalore', 'Karnataka', 560040, 1231231235, 'virat@gmail.com', 'Friend'),
('Vikram', 'mirchi', 'RCB', 'Bangalore', 'Karnataka', 560040, 1231231235, 'vikrammirchi@gmail.com', 'Family');
select * from AddressBook_Table;