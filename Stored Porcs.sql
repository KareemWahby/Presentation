go
Create proc SignIn 
@username nvarchar(20),
@password nvarchar(30),
@success int output
as 
select @success= Count(*)
from Users U
where U.username=@username and U.passKEY=@password


/* ---------------------------------------New Records Procs--------------------------------------- */

go
Create proc AddNewClubAndContractRec
@name nvarchar(100),
@address nvarchar(200),
@telnum nvarchar(11),
@faxnum nvarchar(11),
@dateofSign Date,
@duration nvarchar(50),
@softCopy nvarchar(100),
@website nvarchar(100)
as
begin
	insert into Club
	values (@name,@address,@telnum,@faxnum,@website)
	declare @ClubID int= SCOPE_IDENTITY()
	insert into Contracts
	values(@ClubID,@dateofSign,@duration,@softCopy)
end


go
create proc AddNewClubObligation
@contractID int,
@obligation nvarchar(200)
as
begin
	insert into ClubObligations
	values(@contractID,@obligation)
end


go
create proc AddNewGeneralCondition
@contractID int,
@condition nvarchar(200)
as
begin
	insert into General_Conditions
	values(@contractID,@condition)
end


go
create proc AddNewSusspendedAmount
@contractID int,
@ammount int,
@dateOfSusspention Date
as
begin
	insert into Money_Susspended_for_Settelment
	values(@contractID,@ammount,@dateOfSusspention)
end


go
create proc AddNewOtherPayment
@contractID int,
@description nvarchar(100),
@ammount int
as
begin
	insert into Other_Payment
	values(@contractID,@description,@ammount)
end


go
create proc AddNewPenaltyAmmount
@contractID int,
@penalty nvarchar(200),
@ammount int,
@dateofPenalty Date
as
begin
	insert into Penalties_ammounts_on_contract
	values(@contractID,@penalty,@ammount,@dateofPenalty)
end


go
create proc AddNewPenaltyRef
@contractID int,
@penalty nvarchar(200),
@ammount int
as
begin
	insert into Penalties_Reference
	values(@contractID,@penalty,@ammount)
end


go
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


go
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


go
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


go
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


go
create proc AddNewBoardMemPhone
@boardMemId int,
@phoneNumber nvarchar(16)
as
begin
	insert into ClubBoardMember_Phone_Numbers
	values (@boardMemId,@phoneNumber)
end


go
create proc AddNewBoardMem
@name nvarchar(20),
@position nvarchar(20),
@email nvarchar(50),
@ClubID int,
@phoneNumber nvarchar(16)
as
begin
	insert into ClubBoard
	values(@name,@position,@email,@ClubID)
	declare @boardMemId int = SCOPE_IDENTITY()
	insert into ClubBoardMember_Phone_Numbers
	values (@boardMemId,@phoneNumber)
end


go
create proc AddMarketing_Rights
@contractID INT,
@titles nVARCHAR(max),
@logos nVARCHAR(max),
@bannersAroundField nVARCHAR(max),
@firstTeam nVARCHAR(max),
@addsInClub nVARCHAR(max),
@events nVARCHAR(max),
@tickets nVARCHAR(max),
@printedMaterial nVARCHAR(max),
@website nVARCHAR(max),
@friendlyMatches_trainingCmps nVARCHAR(max)
as
begin
	insert into Marketing_Rights
	values(@contractID,@titles,@logos,@bannersAroundField,@firstTeam,@addsInClub,@events,@tickets,@printedMaterial,@website,@friendlyMatches_trainingCmps)
end


go
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


go
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


go
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


go
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


/* -----------------------------------------Get and Search records Procs----------------------------------------- */
go
Create proc Get_ClubID
@name nvarchar(max),
@id int out
as
select @id=id from Club where name=@name


go
Create proc Get_ContractID
@clubID int,
@id int out
as
select @id=id from Contracts where clubID=@clubID


go
Create proc Get_Club_By_ID
@id int
as
select * from Club where id=@id


go
create proc Search_Club_By_Name
@name nvarchar(100)
as
begin
	declare @sql nvarchar(max)
	set @sql= 'select id,name from Club where name like ''%'+@name+'%'''
	exec(@sql)
end


go
Create proc Get_Club_Board
@ClubID int
as
select id,name,position,email from ClubBoard where ClubID=@ClubID


go
Create proc Get_BoardMem_Phones
@id int
as
select phone_number from ClubBoardMember_Phone_Numbers where clubBoardMemId=@id

go
Create proc Get_Obligations
@contractID int
as
select obligation from ClubObligations where contractID=@contractID


go
Create proc Get_Conditions
@contractID int
as
select condition from General_Conditions where contractID=@contractID


go
Create proc Get_Contract
@contractID int
as
select c.dateofSigning,c.duration,c.softCopyLink from Contracts c where c.id=@contractID 


go
create proc Get_Services
@contractID int
as
select s.football_Kits,s.football_Kits_startDate,s.accomodation,s.transportation,s.mineralWater,s.pre_Season_training_Camp,s.fiveK_perPoint,s.fiftyK_perSeason,s.incentive_table from Services_By_Company s where s.contractID=@contractID


go
Create proc Get_Marketing_Rights
@contractID Int 
as 
begin
	select titles,logos,bannersAroundField,firstTeam,addsInClub,events,titles,printedMaterial,website,friendlyMatches_trainingCmps
	from  Marketing_Rights M
	where M.contractID = @contractID
end


go
create proc Get_Penalties_Reference
@contractID int
as
select penalty,ammount from Penalties_Reference where contractID= @contractID


go 
create proc Get_Penalties_ammounts_on_contract
@contractID int
as
select penalty,ammount,dateofPenalty from Penalties_ammounts_on_contract where contractID=@contractID


go 
create proc Get_other_Payment
@contractID int
as
select description, ammount from Other_Payment where contractID=@contractID


go
create proc Get_numberOfSeasons
@contractID int,
@num int out
as 
begin
	set @num=0
	select @num=@num+isnull(count(*),0) from Season1_payment where contractID=@contractID
	select @num=@num+isnull(count(*),0) from Season2_Payment where contractID=@contractID
	select @num=@num+isnull(count(*),0) from Season3_payment where contractID=@contractID
	select @num=@num+isnull(count(*),0) from Season4_payment where contractID=@contractID
end


go
create proc Get_Season1_Incentives
@contractID int
as
begin
	SELECT
      firstPlace
      ,secondPlace
      ,thirdPlace
      ,fourthPlace
      ,fifthPlace
      ,sixthPlace
      ,seventhPlace
      ,eighthPlace
      ,ninthPlace
      ,tenthPlace
      ,eleventhPlace
      ,twelvethPlace
      ,thirteenthPlace
      ,fourteenthPlace
      ,fifteenthPlace
      ,sixteenthPlace
      ,seventeenthPlace
      ,eighteenthPlace
      ,nineteenthPlace
      ,twentiethPlace
 	FROM Season1_Incentives where contractID=@contractID
end

go
create proc Get_Season2_Incentives
@contractID int
as
begin
	SELECT
      firstPlace
      ,secondPlace
      ,thirdPlace
      ,fourthPlace
      ,fifthPlace
      ,sixthPlace
      ,seventhPlace
      ,eighthPlace
      ,ninthPlace
      ,tenthPlace
      ,eleventhPlace
      ,twelvethPlace
      ,thirteenthPlace
      ,fourteenthPlace
      ,fifteenthPlace
      ,sixteenthPlace
      ,seventeenthPlace
      ,eighteenthPlace
      ,nineteenthPlace
      ,twentiethPlace
    FROM Season2_Incentives where contractID=@contractID
end


go
create proc Get_Season3_Incentives
@contractID int
as
begin
	SELECT
      firstPlace
      ,secondPlace
      ,thirdPlace
      ,fourthPlace
      ,fifthPlace
      ,sixthPlace
      ,seventhPlace
      ,eighthPlace
      ,ninthPlace
      ,tenthPlace
      ,eleventhPlace
      ,twelvethPlace
      ,thirteenthPlace
      ,fourteenthPlace
      ,fifteenthPlace
      ,sixteenthPlace
      ,seventeenthPlace
      ,eighteenthPlace
      ,nineteenthPlace
      ,twentiethPlace
    FROM Season3_Incentives where contractID=@contractID
end


go
create proc Get_Season4_Incentives
@contractID int
as
begin
	SELECT
      firstPlace
      ,secondPlace
      ,thirdPlace
      ,fourthPlace
      ,fifthPlace
      ,sixthPlace
      ,seventhPlace
      ,eighthPlace
      ,ninthPlace
      ,tenthPlace
      ,eleventhPlace
      ,twelvethPlace
      ,thirteenthPlace
      ,fourteenthPlace
      ,fifteenthPlace
      ,sixteenthPlace
      ,seventeenthPlace
      ,eighteenthPlace
      ,nineteenthPlace
      ,twentiethPlace
  	FROM Season4_Incentives where contractID=@contractID
end


go 
create proc Get_Season1_Payment
@contractID int
as
begin
	SELECT 
      total
      ,tvRights
      ,marketingRights
      ,firstInstallment
      ,firstInstallmentDate
      ,firstInstallmentPaid
      ,secondInstallment
      ,secondInstallmentDate
      ,secondInstallmentPaid
      ,thirdInstallment
      ,thirdInstallmentDate
      ,thirdInstallmentPaid
      ,fourthInstallment
      ,fourthInstallmentDate
      ,fourthInstallmentPaid
 	FROM Season1_Payment where contractID=@contractID
end


go 
create proc Get_Season2_Payment
@contractID int
as
begin
	SELECT 
      total
      ,tvRights
      ,marketingRights
      ,firstInstallment
      ,firstInstallmentDate
      ,firstInstallmentPaid
      ,secondInstallment
      ,secondInstallmentDate
      ,secondInstallmentPaid
      ,thirdInstallment
      ,thirdInstallmentDate
      ,thirdInstallmentPaid
      ,fourthInstallment
      ,fourthInstallmentDate
      ,fourthInstallmentPaid
 	FROM Season2_Payment where contractID=@contractID
end


go 
create proc Get_Season3_Payment
@contractID int
as
begin
	SELECT 
      total
      ,tvRights
      ,marketingRights
      ,firstInstallment
      ,firstInstallmentDate
      ,firstInstallmentPaid
      ,secondInstallment
      ,secondInstallmentDate
      ,secondInstallmentPaid
      ,thirdInstallment
      ,thirdInstallmentDate
      ,thirdInstallmentPaid
      ,fourthInstallment
      ,fourthInstallmentDate
      ,fourthInstallmentPaid
 	FROM Season3_Payment where contractID=@contractID
end

go 
create proc Get_Season4_Payment
@contractID int
as
begin
	SELECT 
      total
      ,tvRights
      ,marketingRights
      ,firstInstallment
      ,firstInstallmentDate
      ,firstInstallmentPaid
      ,secondInstallment
      ,secondInstallmentDate
      ,secondInstallmentPaid
      ,thirdInstallment
      ,thirdInstallmentDate
      ,thirdInstallmentPaid
      ,fourthInstallment
      ,fourthInstallmentDate
      ,fourthInstallmentPaid
 	FROM Season4_Payment where contractID=@contractID
end


go
create proc Get_SUSmoney
@contractID Int
as
SELECT susspendedAmmount,DateOfSuspention
  FROM Money_Susspended_for_Settelment where contractID=@contractID

/*--------------------------------------------Editing and deleting Procs--------------------------------------------*/

go
create proc EditPaymentStatus
@contractID int,
@season int,
@installment int,
@paid bit,
@stat bit out
as
begin
	set @stat=1
	declare @seasontbl nvarchar(50)
	declare @installmentfeild nvarchar(50)
	declare @sql nvarchar(max)
	set @seasontbl=case @season
						when 1 then 'Season1_payment'
						when 2 then 'Season2_payment'
						when 3 then 'Season3_payment'
						when 4 then 'Season4_payment'
						end
	set @installmentfeild = case @installment
								when 1 then 'firstInstallmentPaid'
								when 2 then 'secondInstallmentPaid'
								when 3 then 'thirdInstallmentPaid'
								when 4 then 'fourthInstallmentPaid'
								end
	set @sql = concat('update '+@seasontbl+' set '+@installmentfeild+' =',@paid ,' where contractID=',@contractID)
	exec(@sql)						
end

/* -----------------------------------------Calculation Procs----------------------------------------- */

go
Create proc CalContractTotal
@contId int,
@total int output
as
begin
	declare @t1 int =0
	select @t1= total from Season1_payment where ContractID=@contId
	declare @t2 int =0
	select @t2= total from Season2_payment where ContractID=@contId
	declare @t3 int =0
	select @t3= total from Season3_payment where ContractID=@contId
	declare @t4 int =0
	select @t4= total from Season4_payment where ContractID=@contId
	set @total=isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
Create proc CalContractTotalMarketingRights
@contId int,
@total int output
as
begin
	declare @t1 int =0
	select @t1= marketingRights from Season1_payment where ContractID=@contId
	declare @t2 int =0
	select @t2= marketingRights from Season2_payment where ContractID=@contId
	declare @t3 int =0
	select @t3= marketingRights from Season3_payment where ContractID=@contId
	declare @t4 int =0
	select @t4= marketingRights from Season4_payment where ContractID=@contId
	set @total=isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
Create proc CalContractTotalTVRightts
@contId int,
@total int output
as
begin
	declare @t1 int =0
	select @t1= tvRights from Season1_payment where ContractID=@contId
	declare @t2 int =0
	select @t2= tvRights from Season2_payment where ContractID=@contId
	declare @t3 int =0
	select @t3= tvRights from Season3_payment where ContractID=@contId
	declare @t4 int =0
	select @t4= tvRights from Season4_payment where ContractID=@contId
	set @total=isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
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
	set @total=isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
create proc CalTotalContractsMarketingRights
@total int output
as
begin
	declare @t1 int =0
	select @t1= sum(marketingRights) from Season1_payment 
	declare @t2 int =0
	select @t2= sum(marketingRights) from Season2_payment 
	declare @t3 int =0
	select @t3= sum(marketingRights) from Season3_payment 
	declare @t4 int =0
	select @t4= sum(marketingRights) from Season4_payment 
	set @total=isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
create proc CalTotalContractsTVRights
@total int output
as
begin
	declare @t1 int =0
	select @t1= sum(tvRights) from Season1_payment 
	declare @t2 int =0
	select @t2= sum(tvRights) from Season2_payment 
	declare @t3 int =0
	select @t3= sum(tvRights) from Season3_payment 
	declare @t4 int =0
	select @t4= sum(tvRights) from Season4_payment 
	set @total=isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
Create proc CalPaidSeason1
@id int,
@paid int out
as
begin
	declare @t1 int=0
	select @t1=firstInstallment from Season1_Payment where firstInstallmentPaid=1 and contractID=@id
	declare @t2 int=0
	select @t2=secondInstallment from Season1_Payment where secondInstallmentPaid=1 and contractID=@id
	declare @t3 int=0
	select @t3=thirdInstallment from Season1_Payment where thirdInstallmentPaid=1 and contractID=@id
	declare @t4 int=0
	select @t4=fourthInstallment from Season1_Payment where fourthInstallmentPaid=1 and contractID=@id
	set @paid = isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
Create proc CalDueSeason1
@id int,
@due int out
as
begin
	declare @t1 int=0
	select @t1=firstInstallment from Season1_Payment where firstInstallmentPaid=0 and contractID=@id
	declare @t2 int=0
	select @t2=secondInstallment from Season1_Payment where secondInstallmentPaid=0 and contractID=@id
	declare @t3 int=0
	select @t3=thirdInstallment from Season1_Payment where thirdInstallmentPaid=0 and contractID=@id
	declare @t4 int=0
	select @t4=fourthInstallment from Season1_Payment where fourthInstallmentPaid=0 and contractID=@id
	set @due = isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
Create proc CalPaidSeason2
@id int,
@paid int out
as
begin
	declare @t1 int=0
	select @t1=firstInstallment from Season2_Payment where firstInstallmentPaid=1 and contractID=@id
	declare @t2 int=0
	select @t2=secondInstallment from Season2_Payment where secondInstallmentPaid=1 and contractID=@id
	declare @t3 int=0
	select @t3=thirdInstallment from Season2_Payment where thirdInstallmentPaid=1 and contractID=@id
	declare @t4 int=0
	select @t4=fourthInstallment from Season2_Payment where fourthInstallmentPaid=1 and contractID=@id
	set @paid = isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
Create proc CalDueSeason2
@id int,
@due int out
as
begin
	declare @t1 int=0
	select @t1=firstInstallment from Season2_Payment where firstInstallmentPaid=0 and contractID=@id
	declare @t2 int=0
	select @t2=secondInstallment from Season2_Payment where secondInstallmentPaid=0 and contractID=@id
	declare @t3 int=0
	select @t3=thirdInstallment from Season2_Payment where thirdInstallmentPaid=0 and contractID=@id
	declare @t4 int=0
	select @t4=fourthInstallment from Season2_Payment where fourthInstallmentPaid=0 and contractID=@id
	set @due = isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
Create proc CalPaidSeason3
@id int,
@paid int out
as
begin
	declare @t1 int=0
	select @t1=firstInstallment from Season3_Payment where firstInstallmentPaid=1 and contractID=@id
	declare @t2 int=0
	select @t2=secondInstallment from Season3_Payment where secondInstallmentPaid=1 and contractID=@id
	declare @t3 int=0
	select @t3=thirdInstallment from Season3_Payment where thirdInstallmentPaid=1 and contractID=@id
	declare @t4 int=0
	select @t4=fourthInstallment from Season3_Payment where fourthInstallmentPaid=1 and contractID=@id
	set @paid = isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
Create proc CalDueSeason3
@id int,
@due int out
as
begin
	declare @t1 int=0
	select @t1=firstInstallment from Season3_Payment where firstInstallmentPaid=0 and contractID=@id
	declare @t2 int=0
	select @t2=secondInstallment from Season3_Payment where secondInstallmentPaid=0 and contractID=@id
	declare @t3 int=0
	select @t3=thirdInstallment from Season3_Payment where thirdInstallmentPaid=0 and contractID=@id
	declare @t4 int=0
	select @t4=fourthInstallment from Season3_Payment where fourthInstallmentPaid=0 and contractID=@id
	set @due = isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
Create proc CalPaidSeason4
@id int,
@paid int out
as
begin
	declare @t1 int=0
	select @t1=firstInstallment from Season4_Payment where firstInstallmentPaid=1 and contractID=@id
	declare @t2 int=0
	select @t2=secondInstallment from Season4_Payment where secondInstallmentPaid=1 and contractID=@id
	declare @t3 int=0
	select @t3=thirdInstallment from Season4_Payment where thirdInstallmentPaid=1 and contractID=@id
	declare @t4 int=0
	select @t4=fourthInstallment from Season4_Payment where fourthInstallmentPaid=1 and contractID=@id
	set @paid =isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
Create proc CalDueSeason4
@id int,
@due int out
as
begin
	declare @t1 int=0
	select @t1=firstInstallment from Season4_Payment where firstInstallmentPaid=0 and contractID=@id
	declare @t2 int=0
	select @t2=secondInstallment from Season4_Payment where secondInstallmentPaid=0 and contractID=@id
	declare @t3 int=0
	select @t3=thirdInstallment from Season4_Payment where thirdInstallmentPaid=0 and contractID=@id
	declare @t4 int=0
	select @t4=fourthInstallment from Season4_Payment where fourthInstallmentPaid=0 and contractID=@id
	set @due = isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
create proc TotalDueOnContract
@id int,
@tot int out
as
begin
	declare @t1 int
	declare @t2 int
	declare @t3 int
	declare @t4 int
	exec CalDueSeason1 @id , @t1 out
	exec CalDueSeason2 @id , @t2 out
	exec CalDueSeason3 @id , @t3 out
	exec CalDueSeason4 @id , @t4 out
	set @tot=isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
create proc TotalPaidOnContract
@id int,
@tot int out
as
begin
	declare @t1 int
	declare @t2 int
	declare @t3 int
	declare @t4 int
	exec CalPaidSeason1 @id , @t1 out
	exec CalPaidSeason2 @id , @t2 out
	exec CalPaidSeason3 @id , @t3 out
	exec CalPaidSeason4 @id , @t4 out
	set @tot=isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
create proc CalTotalPaidSeason1
@total int=0 out
as
begin
	declare @t1 int =0
	declare @n int
	select @n=count(*) from Season1_Payment
	declare @c int=1
	declare @t int
	while @c<=@n
	begin
		exec calPaidSeason1 @c , @t out
		set @t1 = @t1+@t
		set @c=@c+1
	end
	set @total=isnull(@t1,0)
end


go
create proc CalTotalPaidSeason2
@total int=0 out
as
begin
	declare @t1 int =0
	declare @n int
	select @n=count(*) from Season2_Payment
	declare @c int=1
	declare @t int
	while @c<=@n
	begin
		exec calPaidSeason2 @c , @t out
		set @t1 = @t1+@t
		set @c=@c+1
	end
	set @total=isnull(@t1,0)
end


go
create proc CalTotalPaidSeason3
@total int=0 out
as
begin
	declare @t1 int =0
	declare @n int
	select @n=count(*) from Season3_Payment
	declare @c int=1
	declare @t int
	while @c<=@n
	begin
		exec calPaidSeason3 @c , @t out
		set @t1 = @t1+@t
		set @c=@c+1
	end
	set @total=isnull(@t1,0)
end


go
create proc CalTotalPaidSeason4
@total int=0 out
as
begin
	declare @t1 int =0
	declare @n int
	select @n=count(*) from Season4_Payment
	declare @c int=1
	declare @t int
	while @c<=@n
	begin
		exec calPaidSeason4 @c , @t out
		set @t1 = @t1+@t
		set @c=@c+1
	end
	set @total=isnull(@t1,0)
end


go
create proc CalTotalDueSeason1
@total int=0 out
as
begin
	declare @t1 int =0
	declare @n int
	select @n=count(*) from Season1_Payment
	declare @c int=1
	declare @t int
	while @c<=@n
	begin
		exec calDueSeason1 @c , @t out
		set @t1 = @t1+@t
		set @c=@c+1
	end
	set @total=isnull(@t1,0)
end


go
create proc CalTotalDueSeason2
@total int=0 out
as
begin
	declare @t1 int =0
	declare @n int
	select @n=count(*) from Season2_Payment
	declare @c int=1
	declare @t int
	while @c<=@n
	begin
		exec calDueSeason2 @c , @t out
		set @t1 = @t1+@t
		set @c=@c+1
	end
	set @total=isnull(@t1,0)
end


go
create proc CalTotalDueSeason3
@total int=0 out
as
begin
	declare @t1 int =0
	declare @n int
	select @n=count(*) from Season3_Payment
	declare @c int=1
	declare @t int
	while @c<=@n
	begin
		exec calDueSeason3 @c , @t out
		set @t1 = @t1+@t
		set @c=@c+1
	end
	set @total=isnull(@t1,0)
end


go
create proc CalTotalDueSeason4
@total int=0 out
as
begin
	declare @t1 int =0
	declare @n int
	select @n=count(*) from Season4_Payment
	declare @c int=1
	declare @t int
	while @c<=@n
	begin
		exec calDueSeason4 @c , @t out
		set @t1 = @t1+@t
		set @c=@c+1
	end
	set @total=isnull(@t1,0)
end


go
create proc TotalDue
@tot int out
as
begin
	declare @t1 int
	declare @t2 int
	declare @t3 int
	declare @t4 int
	exec CalTotalDueSeason1 @t1 out
	exec CalTotalDueSeason2 @t2 out
	exec CalTotalDueSeason3 @t3 out
	exec CalTotalDueSeason4 @t4 out
	set @tot=isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go
create proc TotalPaid
@tot int out
as
begin
	declare @t1 int
	declare @t2 int
	declare @t3 int
	declare @t4 int
	exec CalTotalPaidSeason1 @t1 out
	exec CalTotalPaidSeason2 @t2 out
	exec CalTotalPaidSeason3 @t3 out
	exec CalTotalPaidSeason4 @t4 out
	set @tot=isnull(@t1,0)+isnull(@t2,0)+isnull(@t3,0)+isnull(@t4,0)
end


go 
create proc CalOterPaymentsOnContract
@contractID int,
@payment int out
as
begin
	select @payment=isnull(sum(ammount),0) from Other_Payment where contractID=@contractID
end


GO
create proc CalIncentives
@contractID int,
@season int,
@points int,
@place int,
@incentives int out
as
begin
	declare @fivek bit
	declare @fiftyk bit
	declare @incentivetbl bit
	declare @o int
	set @o=0
	select @fivek=s.fiveK_perPoint,@fiftyk=s.fiftyK_perSeason,@incentivetbl=s.incentive_table from Services_By_Company s where contractID=@contractID
	if @fivek=1
	begin
		set @o= @o+(5000*@points)
	end
	if @fiftyk=1
	begin
		set @o= @o+50000
	end
	if @incentivetbl=1
	begin
		create table temp(val int)
		declare @t nvarchar(max)
		set @t= case @place 
					when 1  then 'firstPlace'
	 				when 2  then 'secondPlace'
					when 3  then 'thirdPlace'
					when 4  then 'fourthPlace'
					when 5  then 'fifthPlace'
					when 6  then 'sixthPlace'
					when 7  then 'seventhPlace'
					when 8  then 'eighthPlace'
					when 9  then 'ninthPlace'
					when 10 then 'tenthPlace'
					when 11 then 'eleventhPlace'
					when 12 then 'twelvethPlace'
					when 13 then 'thirteenthPlace'
					when 14 then 'fourteenthPlace'
					when 15 then 'fifteenthPlace'
					when 16 then 'sixteenthPlace'
					when 17 then 'seventeenthPlace'
					when 18 then 'eighteenthPlace'
					when 19 then 'nineteenthPlace'
					when 20 then 'twentiethPlace'
				end
		declare @t3 nvarchar(max)
		if @season=1
		begin
		    set @t3 = concat('insert into temp select '+@t+' from Season1_Incentives where contractID= ',@contractID)
		end
		else
		begin
			if @season=2
			begin
				set @t3 = concat('insert into temp select '+@t+' from Season2_Incentives where contractID= ',@contractID)
			end
			else
			begin
				if @season=3
				begin
					set @t3 = concat('insert into temp select '+@t+' from Season3_Incentives where contractID= ',@contractID)
				end
				else
				begin
					if @season=4
					begin
						set @t3 = concat('insert into temp select '+@t+' from Season4_Incentives where contractID= ',@contractID)
					end
				end
			end
		end
		exec(@t3)
		set @o=@o+isnull((select top 1 val from temp),0)
		drop table temp
	end
	set @incentives=@o
end


go
create proc CalTotalPenalies
@contId int,
@tot int out
as
select @tot=isnull(sum(ammount),0) from Penalties_ammounts_on_contract where contractID=@contId

create proc TotalSeason
@s int,
@total int out
as
create table temptot(val int)
declare @seasontbl nvarchar(max)
declare @sql nvarchar(max)
set @seasontbl=case @s
						when 1 then 'Season1_payment'
						when 2 then 'Season2_payment'
						when 3 then 'Season3_payment'
						when 4 then 'Season4_payment'
						end
set @sql='insert into temptot select isnull(sum(total),0) from '+@seasontbl
exec( @sql)
select @total=isnull((select top 1 val from temptot),0)
drop table temptot
print @total

create proc TotalSeasontv
@s int,
@total int out
as
create table temptot(val int)
declare @seasontbl nvarchar(max)
declare @sql nvarchar(max)
set @seasontbl=case @s
						when 1 then 'Season1_payment'
						when 2 then 'Season2_payment'
						when 3 then 'Season3_payment'
						when 4 then 'Season4_payment'
						end
set @sql='insert into temptot select isnull(sum(tvRights),0) from '+@seasontbl
exec( @sql)
select @total=isnull((select top 1 val from temptot),0)
drop table temptot
print @total

create proc TotalSeasonMarketing
@s int,
@total int out
as
create table temptot(val int)
declare @seasontbl nvarchar(max)
declare @sql nvarchar(max)
set @seasontbl=case @s
						when 1 then 'Season1_payment'
						when 2 then 'Season2_payment'
						when 3 then 'Season3_payment'
						when 4 then 'Season4_payment'
						end
set @sql='insert into temptot select isnull(sum(marketingRights),0) from '+@seasontbl
exec( @sql)
select @total=isnull((select top 1 val from temptot),0)
drop table temptot
print @total