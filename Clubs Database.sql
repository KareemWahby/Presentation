USE master
DROP DATABASE Clubs
CREATE DATABASE Clubs
USE Clubs

CREATE TABLE Users (
	id INT IDENTITY PRIMARY KEY,
	userName VARCHAR(20) UNIQUE NOT NULL,
	passKey VARCHAR(30)
)

CREATE TABLE Club (
	id INT IDENTITY PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	address VARCHAR(200),
	telephone_number VARCHAR(11),
	fax VARCHAR(11)
)

CREATE TABLE ClubBoard (
	id INT IDENTITY PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	position VARCHAR(20),
	email VARCHAR(50),
	clubID INT UNIQUE,
	FOREIGN KEY (clubID) REFERENCES Club
)

CREATE TABLE ClubBoardMember_Phone_Numbers (
	clubBoardMemId INT,
	phone_number VARCHAR(16),
	PRIMARY KEY (clubBoardMemId,phone_number),
	FOREIGN KEY (clubBoardMemId) REFERENCES ClubBoard
)

CREATE TABLE Contracts (
	id INT IDENTITY PRIMARY KEY,
	clubID INT UNIQUE,
	dateOfSigning Date,
	duration VARCHAR(50),
	softCopyLink VARCHAR(100),
 	FOREIGN KEY (clubID) REFERENCES Club
)


CREATE TABLE ClubObligations (
	contractID INT,
	obligation VARCHAR(200),
	PRIMARY KEY (contractID,obligation),
	FOREIGN KEY (contractID) REFERENCES Contracts
)

CREATE TABLE General_Conditions (
	contractID INT,
	condition VARCHAR(200),
	PRIMARY KEY (contractID,condition),
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Penalties_Reference (
	contractID INT,
	penalty VARCHAR(200),
	ammount INT,
	PRIMARY KEY (contractID,penalty,ammount),
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Penalties_ammounts_on_contract (
	contractID INT,
	penalty VARCHAR(200),
	ammount INT,
	dateofPenalty Date,
	PRIMARY KEY (contractID,penalty,dateofPenalty),
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Marketing_Rights (
	contractID INT PRIMARY KEY ,
	titles VARCHAR(5000),
	logos VARCHAR(5000),
	bannersAroundField VARCHAR(5000),
	firstTeam VARCHAR(5000),
	addsInClub VARCHAR(5000),
	events VARCHAR(5000),
	tickets VARCHAR(5000),
	printedMaterial VARCHAR(5000),
	website VARCHAR(5000),
	friendlyMatches_trainingCmps VARCHAR(5000),
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
	description VARCHAR(100),
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