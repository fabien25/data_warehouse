Drop table Period CASCADE CONSTRAINTS;
Drop table Donation CASCADE CONSTRAINTS;
Drop table Donor CASCADE CONSTRAINTS;

/*
Drop table Company CASCADE CONSTRAINTS;
Drop table Dates CASCADE CONSTRAINTS;
Drop table Grants CASCADE CONSTRAINTS;
Drop table Hosts CASCADE CONSTRAINTS;
Drop table Networks CASCADE CONSTRAINTS;
Drop table Period CASCADE CONSTRAINTS;
Drop table Produces CASCADE CONSTRAINTS;
Drop table Represented CASCADE CONSTRAINTS;
Drop table Shows CASCADE CONSTRAINTS;
Drop table Theater CASCADE CONSTRAINTS;
Drop table Ticket CASCADE CONSTRAINTS;
*/

CREATE TABLE Period
(
	Period_ID number(7) primary key,
	Months_since_first number(7),
	Months_since_last number(7)
);

CREATE TABLE Donation
(
	Donation_ID number(7) primary key,
    Number_of_donation number(7),
    Quantity_of_blood number(7)
);

CREATE TABLE Donor 
(
	Period_ID number(7),
	Donation_ID number(7),
	March_2007 number(2),
    foreign key (Period_ID) references Period(Period_ID),
	foreign key (Donation_ID) references Donation(Donation_ID)
);