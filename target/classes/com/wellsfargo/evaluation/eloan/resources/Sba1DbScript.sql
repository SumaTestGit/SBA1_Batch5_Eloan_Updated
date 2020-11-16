DROP DATABASE IF EXISTS sba1;

CREATE DATABASE sba1;

USE sba1;

CREATE TABLE User (

	userid int AUTOINCREMENT(1,1),
	username VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL,
	PRIMARY KEY (userid),
);

CREATE TABLE ApprovedLoan (

	applno INT NOT NULL FORIEGN KEY,
	amotsanctioned DECIMAL(10,2) NOT NULL,
	loanterm INT(2) NOT NULL,
	psd VARCHAR NOT NULL,
	lcd VARCHAR NOT NULL,
	emi DECIMAL(10,2) NOT NULL
);

CREATE TABLE LoanInfo (

	loanApplNo int AUTOINCREMENT(500001,1) PRIMERY KEY,
	purpose VARCHAR NOT NULL,
	amtrequest DECIMAL(10,2) NOT NULL;
	doa DATE NOT NULL,
	bstructure VARCHAR(20) NOT NULL,
	bindicator VARCHAR(20) NOT NULL,
	address VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	mobile INT(10) NOT NULL,
	status VARCHAR(20) NOT NULL,	
);

CREATE TABLE ApplicationInfo (

	id int AUTOINCREMENT(100001,1) PRIMARY KEY,	
	userfirstname VARCHAR NOT NULL,
	UserlastName VARCHAR NOT NULL,	
	email VARCHAR(100) NOT NULL,
	mobile INT(10) NOT NULL,
	houseno VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
	country VARCHAR(50) NOT NULL,
	zipcode int(6) NOT NULL,
	dob DATE NOT NULL,
	pannumber VARCHAR(10) NOT NULL	
);



 