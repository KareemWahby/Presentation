CREATE DATABASE Clubs

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

CREATE TABLE ClubReps (
	id INT IDENTITY PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	email VARCHAR(50),
	clubID INT,
	FOREIGN KEY (clubID) REFERENCES Club
)

CREATE TABLE ClubReps_Phone_Numbers (
	repId INT,
	phone_number VARCHAR(16),
	PRIMARY KEY (repId,phone_number),
	FOREIGN KEY (repId) REFERENCES ClubReps
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


CREATE TABLE Penalties (
	contractID INT,
	penalty VARCHAR(200),
	fine INT,
	PRIMARY KEY (contractID,penalty,fine),
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
	pre_Season_training_Camp BIT,
	training_camp_type BIT, -- 1 for abroad , 0 for local
	fiveK_perPoint BIT,
	fiftyK_perSeason BIT,
	incentive_table BIT,
	FOREIGN KEY (contractID) REFERENCES Contracts
)


CREATE TABLE Season1_Incentives (
	contractID INT PRIMARY KEY,
	firstPlace INT,
	secondPlace INT,
	thirdPlace INT,
	fourthPlace INT,
	fifthPlace INT,
	sixthPlace INT,
	seventhPlace INT,
	eighthPlace INT,
	ninthPlace INT,
	tenthPlace INT,
	eleventhPlace INT,
	twelvethPlace INT,
	thirteenthPlace INT,
	fourteenthPlace INT,
	fifteenthPlace INT,
	sixteenthPlace INT,
	seventeenthPlace INT,
	eighteenthPlace INT,
	nineteenthPlace INT,
	twentiethPlace INT,
	FOREIGN KEY (contractID) REFERENCES Contracts
) 


CREATE TABLE Season2_Incentives (
	contractID INT PRIMARY KEY,
	firstPlace INT,
	secondPlace INT,
	thirdPlace INT,
	fourthPlace INT,
	fifthPlace INT,
	sixthPlace INT,
	seventhPlace INT,
	eighthPlace INT,
	ninthPlace INT,
	tenthPlace INT,
	eleventhPlace INT,
	twelvethPlace INT,
	thirteenthPlace INT,
	fourteenthPlace INT,
	fifteenthPlace INT,
	sixteenthPlace INT,
	seventeenthPlace INT,
	eighteenthPlace INT,
	nineteenthPlace INT,
	twentiethPlace INT,
	FOREIGN KEY (contractID) REFERENCES Contracts
) 

CREATE TABLE Season3_Incentives (
	contractID INT PRIMARY KEY,
	firstPlace INT,
	secondPlace INT,
	thirdPlace INT,
	fourthPlace INT,
	fifthPlace INT,
	sixthPlace INT,
	seventhPlace INT,
	eighthPlace INT,
	ninthPlace INT,
	tenthPlace INT,
	eleventhPlace INT,
	twelvethPlace INT,
	thirteenthPlace INT,
	fourteenthPlace INT,
	fifteenthPlace INT,
	sixteenthPlace INT,
	seventeenthPlace INT,
	eighteenthPlace INT,
	nineteenthPlace INT,
	twentiethPlace INT,
	FOREIGN KEY (contractID) REFERENCES Contracts
) 


CREATE TABLE Season4_Incentives (
	contractID INT PRIMARY KEY,
	firstPlace INT,
	secondPlace INT,
	thirdPlace INT,
	fourthPlace INT,
	fifthPlace INT,
	sixthPlace INT,
	seventhPlace INT,
	eighthPlace INT,
	ninthPlace INT,
	tenthPlace INT,
	eleventhPlace INT,
	twelvethPlace INT,
	thirteenthPlace INT,
	fourteenthPlace INT,
	fifteenthPlace INT,
	sixteenthPlace INT,
	seventeenthPlace INT,
	eighteenthPlace INT,
	nineteenthPlace INT,
	twentiethPlace INT,
	FOREIGN KEY (contractID) REFERENCES Contracts
) 
