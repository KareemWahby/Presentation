USE master
DROP DATABASE Clubs
CREATE DATABASE Clubs
USE Clubs

CREATE TABLE Users (
	id INT IDENTITY PRIMARY KEY,
	userName NVARCHAR(20) UNIQUE NOT NULL,
	passKey NVARCHAR(30)
)

CREATE TABLE Club (
	id INT IDENTITY PRIMARY KEY,
	name NVARCHAR(100) NOT NULL,
	address NVARCHAR(200),
	telephone_number NVARCHAR(11),
	fax NVARCHAR(11),
	website NVARCHAR(max)
)

CREATE TABLE ClubBoard (
	id INT IDENTITY PRIMARY KEY,
	name NVARCHAR(20) NOT NULL,
	position NVARCHAR(20),
	email NVARCHAR(50),
	clubID INT UNIQUE,
	FOREIGN KEY (clubID) REFERENCES Club
)

CREATE TABLE ClubBoardMember_Phone_Numbers (
	clubBoardMemId INT,
	phone_number NVARCHAR(16),
	PRIMARY KEY (clubBoardMemId,phone_number),
	FOREIGN KEY (clubBoardMemId) REFERENCES ClubBoard
)

CREATE TABLE Contracts (
	id INT IDENTITY PRIMARY KEY,
	clubID INT UNIQUE,
	dateOfSigning Date,
	duration NVARCHAR(50),
	softCopyLink NVARCHAR(100),
 	FOREIGN KEY (clubID) REFERENCES Club
)


CREATE TABLE ClubObligations (
	contractID INT,
	obligation NVARCHAR(200),
	PRIMARY KEY (contractID,obligation),
	FOREIGN KEY (contractID) REFERENCES Contracts
)

CREATE TABLE General_Conditions (
	contractID INT,
	condition NVARCHAR(200),
	PRIMARY KEY (contractID,condition),
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Penalties_Reference (
	contractID INT,
	penalty NVARCHAR(200),
	ammount INT,
	PRIMARY KEY (contractID,penalty,ammount),
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Penalties_ammounts_on_contract (
	contractID INT,
	penalty NVARCHAR(200),
	ammount INT,
	dateofPenalty Date,
	PRIMARY KEY (contractID,penalty,dateofPenalty),
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Marketing_Rights (
	contractID INT PRIMARY KEY ,
	titles NVARCHAR(max),
	logos NVARCHAR(max),
	bannersAroundField NVARCHAR(max),
	firstTeam NVARCHAR(max),
	addsInClub NVARCHAR(max),
	events NVARCHAR(max),
	tickets NVARCHAR(max),
	printedMaterial NVARCHAR(max),
	website NVARCHAR(max),
	friendlyMatches_trainingCmps NVARCHAR(max),
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Services_By_Company (
	contractID INT PRIMARY KEY,
	football_Kits BIT ,
	football_Kits_startDate Date,
	accomodation BIT,
	transportation BIT,
	mineralWater BIT,
	pre_Season_training_Camp BIT,-- 1 for abroad , 0 for local , null of not
	fiveK_perPoint BIT NOT NULL,
	fiftyK_perSeason BIT NOT NULL,
	incentive_table BIT NOT NULL,
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Season1_Incentives (
	contractID INT PRIMARY KEY,
	firstPlace INT NOT NULL,
	secondPlace INT NOT NULL,
	thirdPlace INT NOT NULL,
	fourthPlace INT NOT NULL,
	fifthPlace INT NOT NULL,
	sixthPlace INT NOT NULL,
	seventhPlace INT NOT NULL,
	eighthPlace INT NOT NULL,
	ninthPlace INT NOT NULL,
	tenthPlace INT NOT NULL,
	eleventhPlace INT NOT NULL,
	twelvethPlace INT NOT NULL,
	thirteenthPlace INT NOT NULL,
	fourteenthPlace INT NOT NULL,
	fifteenthPlace INT NOT NULL,
	sixteenthPlace INT NOT NULL,
	seventeenthPlace INT NOT NULL,
	eighteenthPlace INT NOT NULL,
	nineteenthPlace INT NOT NULL,
	twentiethPlace INT NOT NULL,
	FOREIGN KEY (contractID) REFERENCES Contracts
) 


CREATE TABLE Season2_Incentives (
	contractID INT PRIMARY KEY,
	firstPlace INT NOT NULL,
	secondPlace INT NOT NULL,
	thirdPlace INT NOT NULL,
	fourthPlace INT NOT NULL,
	fifthPlace INT NOT NULL,
	sixthPlace INT NOT NULL,
	seventhPlace INT NOT NULL,
	eighthPlace INT NOT NULL,
	ninthPlace INT NOT NULL,
	tenthPlace INT NOT NULL,
	eleventhPlace INT NOT NULL,
	twelvethPlace INT NOT NULL,
	thirteenthPlace INT NOT NULL,
	fourteenthPlace INT NOT NULL,
	fifteenthPlace INT NOT NULL,
	sixteenthPlace INT NOT NULL,
	seventeenthPlace INT NOT NULL,
	eighteenthPlace INT NOT NULL,
	nineteenthPlace INT NOT NULL,
	twentiethPlace INT NOT NULL,
	FOREIGN KEY (contractID) REFERENCES Contracts
) 

CREATE TABLE Season3_Incentives (
	contractID INT PRIMARY KEY,
	firstPlace INT NOT NULL,
	secondPlace INT NOT NULL,
	thirdPlace INT NOT NULL,
	fourthPlace INT NOT NULL,
	fifthPlace INT NOT NULL,
	sixthPlace INT NOT NULL,
	seventhPlace INT NOT NULL,
	eighthPlace INT NOT NULL,
	ninthPlace INT NOT NULL,
	tenthPlace INT NOT NULL,
	eleventhPlace INT NOT NULL,
	twelvethPlace INT NOT NULL,
	thirteenthPlace INT NOT NULL,
	fourteenthPlace INT NOT NULL,
	fifteenthPlace INT NOT NULL,
	sixteenthPlace INT NOT NULL,
	seventeenthPlace INT NOT NULL,
	eighteenthPlace INT NOT NULL,
	nineteenthPlace INT NOT NULL,
	twentiethPlace INT NOT NULL,
	FOREIGN KEY (contractID) REFERENCES Contracts
) 


CREATE TABLE Season4_Incentives (
	contractID INT PRIMARY KEY,
	firstPlace INT NOT NULL,
	secondPlace INT NOT NULL,
	thirdPlace INT NOT NULL,
	fourthPlace INT NOT NULL,
	fifthPlace INT NOT NULL,
	sixthPlace INT NOT NULL,
	seventhPlace INT NOT NULL,
	eighthPlace INT NOT NULL,
	ninthPlace INT NOT NULL,
	tenthPlace INT NOT NULL,
	eleventhPlace INT NOT NULL,
	twelvethPlace INT NOT NULL,
	thirteenthPlace INT NOT NULL,
	fourteenthPlace INT NOT NULL,
	fifteenthPlace INT NOT NULL,
	sixteenthPlace INT NOT NULL,
	seventeenthPlace INT NOT NULL,
	eighteenthPlace INT NOT NULL,
	nineteenthPlace INT NOT NULL,
	twentiethPlace INT NOT NULL,
	FOREIGN KEY (contractID) REFERENCES Contracts
) 


CREATE TABLE Season1_Payment (
	contractID INT PRIMARY KEY,
	total INT ,
	tvRights INT,
	marketingRights INT,
	firstInstallment INT,
	firstInstallmentDate DATE,
	firstInstallmentPaid BIT DEFAULT 0,
	secondInstallment INT,
	secondInstallmentDate DATE,
	secondInstallmentPaid BIT DEFAULT 0,
	thirdInstallment INT,
	thirdInstallmentDate DATE,
	thirdInstallmentPaid BIT DEFAULT 0,
	fourthInstallment INT,
	fourthInstallmentDate DATE,
	fourthInstallmentPaid BIT DEFAULT 0,
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Season2_Payment (
	contractID INT PRIMARY KEY,
	total INT,
	tvRights INT,
	marketingRights INT,
	firstInstallment INT,
	firstInstallmentDate DATE,
	firstInstallmentPaid BIT DEFAULT 0,
	secondInstallment INT,
	secondInstallmentDate DATE,
	secondInstallmentPaid BIT DEFAULT 0,
	thirdInstallment INT,
	thirdInstallmentDate DATE,
	thirdInstallmentPaid BIT DEFAULT 0,
	fourthInstallment INT,
	fourthInstallmentDate DATE,
	fourthInstallmentPaid BIT DEFAULT 0,
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Season3_Payment (
	contractID INT PRIMARY KEY,
	total INT,
	tvRights INT,
	marketingRights INT,
	firstInstallment INT,
	firstInstallmentDate DATE,
	firstInstallmentPaid BIT DEFAULT 0,
	secondInstallment INT,
	secondInstallmentDate DATE,
	secondInstallmentPaid BIT DEFAULT 0,
	thirdInstallment INT,
	thirdInstallmentDate DATE,
	thirdInstallmentPaid BIT DEFAULT 0,
	fourthInstallment INT,
	fourthInstallmentDate DATE,
	fourthInstallmentPaid BIT DEFAULT 0,
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Season4_Payment (
	contractID INT PRIMARY KEY,
	total INT,
	tvRights INT,
	marketingRights INT,
	firstInstallment INT,
	firstInstallmentDate DATE,
	firstInstallmentPaid BIT DEFAULT 0,
	secondInstallment INT,
	secondInstallmentDate DATE,
	secondInstallmentPaid BIT DEFAULT 0,
	thirdInstallment INT,
	thirdInstallmentDate DATE,
	thirdInstallmentPaid BIT DEFAULT 0,
	fourthInstallment INT,
	fourthInstallmentDate DATE,
	fourthInstallmentPaid BIT DEFAULT 0,
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Other_Payment (
	contractID Int ,
	description NVARCHAR(100),
	ammount Int,
	PRIMARY KEY (contractID,description,ammount),
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Money_Susspended_for_Settelment(
	contractID INT,
	susspendedAmmount INT,
	DateOfSuspention DATE,
	FOREIGN KEY (contractID) REFERENCES Contracts 	
)