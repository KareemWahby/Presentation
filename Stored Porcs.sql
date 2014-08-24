Create proc SignIn 
@username varchar(20),
@password varchar(30),
@success int output
as 
select @success= Count(*)
from Users U
where U.username=@username and U.passKEY=@password


Create proc AddNewClubAndContractRec
@name varchar(100),
@address varchar(200),
@telnum varchar(11),
@faxnum varchar(11),
@dateofSign Date,
@duration varchar(50),
@softCopy varchar(100)
as
begin
	insert into Club
	values (@name,@address,@telnum,@faxnum)
	declare @ClubID int= SCOPE_IDENTITY()
	insert into Contracts
	values(@ClubID,@dateofSign,@duration,@softCopy)
end


create proc AddNewClubObligation
@contractID int,
@obligation varchar(200)
as
begin
	insert into ClubObligations
	values(@contractID,@obligation)
end


create proc AddNewGeneralCondition
@contractID int,
@condition varchar(200)
as
begin
	insert into General_Conditions
	values(@contractID,@condition)
end


create proc AddNewSusspendedAmount
@contractID int,
@ammount int,
@dateOfSusspention Date
as
begin
	insert into Money_Susspended_for_Settelment
	values(@contractID,@ammount,@dateOfSusspention)
end


create proc AddNewOtherPayment
@contractID int,
@description varchar(100),
@ammount int
as
begin
	insert into Other_Payment
	values(@contractID,@description,@ammount)
end


create proc AddNewPenaltyAmmount
@contractID int,
@penalty varchar(200),
@ammount int,
@dateofPenalty Date
as
begin
	insert into Penalties_ammounts_on_contract
	values(@contractID,@penalty,@ammount,@dateofPenalty)
end


create proc AddNewPenaltyRef
@contractID int,
@penalty varchar(200),
@ammount int
as
begin
	insert into Penalties_Reference
	values(@contractID,@penalty,@ammount,@dateofPenalty)
end


create proc AddSeason1Incentive
@contractID INT ,
@firstPlace INT,
@secondPlace INT,
@thirdPlace INT,
@fourthPlace INT,
@fifthPlace INT,
@sixthPlace INT,
@seventhPlace INT,
@eighthPlace INT,
@ninthPlace INT,
@tenthPlace INT,
@eleventhPlace INT,
@twelvethPlace INT,
@thirteenthPlace INT,
@fourteenthPlace INT,
@fifteenthPlace INT,
@sixteenthPlace INT,
@seventeenthPlace INT,
@eighteenthPlace INT,
@nineteenthPlace INT,
@twentiethPlace INT
as
begin
	insert into Season1_Incentives
	values(@contractID,@firstPlace,@secondPlace,@thirdPlace,@fourthPlace,@fifthPlace,@sixthPlace,@seventhPlace,@eighthPlace,@ninthPlace,@tenthPlace,@eleventhPlace,@twelvethPlace,@thirteenthPlace,@fourteenthPlace,@fifteenthPlace,@sixteenthPlace,@seventeenthPlace,@eighteenthPlace,@nineteenthPlace,@twentiethPlace)
end


create proc AddSeason2Incentive
@contractID INT ,
@firstPlace INT,
@secondPlace INT,
@thirdPlace INT,
@fourthPlace INT,
@fifthPlace INT,
@sixthPlace INT,
@seventhPlace INT,
@eighthPlace INT,
@ninthPlace INT,
@tenthPlace INT,
@eleventhPlace INT,
@twelvethPlace INT,
@thirteenthPlace INT,
@fourteenthPlace INT,
@fifteenthPlace INT,
@sixteenthPlace INT,
@seventeenthPlace INT,
@eighteenthPlace INT,
@nineteenthPlace INT,
@twentiethPlace INT
as
begin
	insert into Season2_Incentives
	values(@contractID,@firstPlace,@secondPlace,@thirdPlace,@fourthPlace,@fifthPlace,@sixthPlace,@seventhPlace,@eighthPlace,@ninthPlace,@tenthPlace,@eleventhPlace,@twelvethPlace,@thirteenthPlace,@fourteenthPlace,@fifteenthPlace,@sixteenthPlace,@seventeenthPlace,@eighteenthPlace,@nineteenthPlace,@twentiethPlace)
end


create proc AddSeason3Incentive
@contractID INT ,
@firstPlace INT,
@secondPlace INT,
@thirdPlace INT,
@fourthPlace INT,
@fifthPlace INT,
@sixthPlace INT,
@seventhPlace INT,
@eighthPlace INT,
@ninthPlace INT,
@tenthPlace INT,
@eleventhPlace INT,
@twelvethPlace INT,
@thirteenthPlace INT,
@fourteenthPlace INT,
@fifteenthPlace INT,
@sixteenthPlace INT,
@seventeenthPlace INT,
@eighteenthPlace INT,
@nineteenthPlace INT,
@twentiethPlace INT
as
begin
	insert into Season3_Incentives
	values(@contractID,@firstPlace,@secondPlace,@thirdPlace,@fourthPlace,@fifthPlace,@sixthPlace,@seventhPlace,@eighthPlace,@ninthPlace,@tenthPlace,@eleventhPlace,@twelvethPlace,@thirteenthPlace,@fourteenthPlace,@fifteenthPlace,@sixteenthPlace,@seventeenthPlace,@eighteenthPlace,@nineteenthPlace,@twentiethPlace)
end


create proc AddSeason4Incentive
@contractID INT ,
@firstPlace INT,
@secondPlace INT,
@thirdPlace INT,
@fourthPlace INT,
@fifthPlace INT,
@sixthPlace INT,
@seventhPlace INT,
@eighthPlace INT,
@ninthPlace INT,
@tenthPlace INT,
@eleventhPlace INT,
@twelvethPlace INT,
@thirteenthPlace INT,
@fourteenthPlace INT,
@fifteenthPlace INT,
@sixteenthPlace INT,
@seventeenthPlace INT,
@eighteenthPlace INT,
@nineteenthPlace INT,
@twentiethPlace INT
as
begin
	insert into Season4_Incentives
	values(@contractID,@firstPlace,@secondPlace,@thirdPlace,@fourthPlace,@fifthPlace,@sixthPlace,@seventhPlace,@eighthPlace,@ninthPlace,@tenthPlace,@eleventhPlace,@twelvethPlace,@thirteenthPlace,@fourteenthPlace,@fifteenthPlace,@sixteenthPlace,@seventeenthPlace,@eighteenthPlace,@nineteenthPlace,@twentiethPlace)
end

create proc AddNewBoardMemPhone
@boardMemId int,
@phoneNumber varchar(16)
as
begin
	insert into ClubBoardMember_Phone_Numbers
	values (@boardMemId,@phoneNumber)
end


create proc AddNewBoardMem
@name varchar(20),
@position varchar(20),
@email varchar(50),
@ClubID int,
@phoneNumber varchar(16)
as
begin
	insert into ClubBoard
	values(@name,@position,@email,@ClubID)
	declare @boardMemId int = SCOPE_IDENTITY()
	insert into ClubBoardMember_Phone_Numbers
	values (@boardMemId,@phoneNumber)
end


Create proc View_Marketing_Rights
@contractID Int 
as 
select *
from  Marketing_Rights M
where M.contractID = contractID


create proc AddMarketing_Rights
@contractID INT,
@titles VARCHAR(5000),
@logos VARCHAR(5000),
@bannersAroundField VARCHAR(5000),
@firstTeam VARCHAR(5000),
@addsInClub VARCHAR(5000),
@events VARCHAR(5000),
@tickets VARCHAR(5000),
@printedMaterial VARCHAR(5000),
@website VARCHAR(5000),
@friendlyMatches_trainingCmps VARCHAR(5000)
as
begin
	insert into Marketing_Rights
	values(@contractID,@titles,@logos,@bannersAroundField,@firstTeam,@addsInClub,@events,@tickets,@printedMaterial,@website,@friendlyMatches_trainingCmps)
end


create proc AddSeason1_Payment 
@contractID INT,
@total INT ,
@tvRights INT,
@marketingRights INT,
@firstInstallment INT,
@firstInstallmentDate DATE,
@firstInstallmentPaid BIT,
@secondInstallment INT,
@secondInstallmentDate DATE,
@secondInstallmentPaid BIT,
@thirdInstallment INT,
@thirdInstallmentDate DATE,
@thirdInstallmentPaid BIT,
@fourthInstallment INT,
@fourthInstallmentDate DATE,
@fourthInstallmentPaid BIT
as
begin
	insert into Season1_payment
	values (@contractID,@total,@tvRights,@marketingRights,@firstInstallment,@firstInstallmentDate,@firstInstallmentPaid,@secondInstallment,@secondInstallmentDate,@secondInstallmentPaid,@thirdInstallment,@thirdInstallmentDate,@thirdInstallmentPaid,@fourthInstallment,@fourthInstallmentDate,@fourthInstallmentPaid)
end


create proc AddSeason2_Payment 
@contractID INT,
@total INT ,
@tvRights INT,
@marketingRights INT,
@firstInstallment INT,
@firstInstallmentDate DATE,
@firstInstallmentPaid BIT,
@secondInstallment INT,
@secondInstallmentDate DATE,
@secondInstallmentPaid BIT,
@thirdInstallment INT,
@thirdInstallmentDate DATE,
@thirdInstallmentPaid BIT,
@fourthInstallment INT,
@fourthInstallmentDate DATE,
@fourthInstallmentPaid BIT
as
begin
	insert into Season2_payment
	values (@contractID,@total,@tvRights,@marketingRights,@firstInstallment,@firstInstallmentDate,@firstInstallmentPaid,@secondInstallment,@secondInstallmentDate,@secondInstallmentPaid,@thirdInstallment,@thirdInstallmentDate,@thirdInstallmentPaid,@fourthInstallment,@fourthInstallmentDate,@fourthInstallmentPaid)
end


create proc AddSeason3_Payment 
@contractID INT,
@total INT ,
@tvRights INT,
@marketingRights INT,
@firstInstallment INT,
@firstInstallmentDate DATE,
@firstInstallmentPaid BIT,
@secondInstallment INT,
@secondInstallmentDate DATE,
@secondInstallmentPaid BIT,
@thirdInstallment INT,
@thirdInstallmentDate DATE,
@thirdInstallmentPaid BIT,
@fourthInstallment INT,
@fourthInstallmentDate DATE,
@fourthInstallmentPaid BIT
as
begin
	insert into Season3_payment
	values (@contractID,@total,@tvRights,@marketingRights,@firstInstallment,@firstInstallmentDate,@firstInstallmentPaid,@secondInstallment,@secondInstallmentDate,@secondInstallmentPaid,@thirdInstallment,@thirdInstallmentDate,@thirdInstallmentPaid,@fourthInstallment,@fourthInstallmentDate,@fourthInstallmentPaid)
end


create proc AddSeason4_Payment 
@contractID INT,
@total INT ,
@tvRights INT,
@marketingRights INT,
@firstInstallment INT,
@firstInstallmentDate DATE,
@firstInstallmentPaid BIT,
@secondInstallment INT,
@secondInstallmentDate DATE,
@secondInstallmentPaid BIT,
@thirdInstallment INT,
@thirdInstallmentDate DATE,
@thirdInstallmentPaid BIT,
@fourthInstallment INT,
@fourthInstallmentDate DATE,
@fourthInstallmentPaid BIT
as
begin
	insert into Season4_payment
	values (@contractID,@total,@tvRights,@marketingRights,@firstInstallment,@firstInstallmentDate,@firstInstallmentPaid,@secondInstallment,@secondInstallmentDate,@secondInstallmentPaid,@thirdInstallment,@thirdInstallmentDate,@thirdInstallmentPaid,@fourthInstallment,@fourthInstallmentDate,@fourthInstallmentPaid)
end


Create proc CalContractTotal
@contId int,
@total int output
as
begin
	declare @t1 int =0
	select @t1= total from Season1_payment where ContractID=@id
	declare @t2 int =0
	select @t2= total from Season2_payment where ContractID=@id
	declare @t3 int =0
	select @t3= total from Season3_payment where ContractID=@id
	declare @t4 int =0
	select @t4= total from Season4_payment where ContractID=@id
	set @tot=@t1+@t2+@t3+@t4
end


create proc CalTotalContracts
@total int output
as
begin
	declare @t1 int =0
	select @t1= sum(total) from Season1_payment 
	declare @t2 int =0
	select @t2= sum(total) from Season2_payment 
	declare @t3 int =0
	select @t3= sum(total) from Season3_payment 
	declare @t4 int =0
	select @t4= sum(total) from Season4_payment 
	set @total=@t1+@t2+@t3+@t4
end


