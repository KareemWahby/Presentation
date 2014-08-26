go
Create proc SignIn 
@username varchar(20),
@password varchar(30),
@success int output
as 
select @success= Count(*)
from Users U
where U.username=@username and U.passKEY=@password


/* ---------------------------------------New Records Procs--------------------------------------- */

go
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


go
create proc AddNewClubObligation
@contractID int,
@obligation varchar(200)
as
begin
	insert into ClubObligations
	values(@contractID,@obligation)
end


go
create proc AddNewGeneralCondition
@contractID int,
@condition varchar(200)
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
@description varchar(100),
@ammount int
as
begin
	insert into Other_Payment
	values(@contractID,@description,@ammount)
end


go
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


go
create proc AddNewPenaltyRef
@contractID int,
@penalty varchar(200),
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
@phoneNumber varchar(16)
as
begin
	insert into ClubBoardMember_Phone_Numbers
	values (@boardMemId,@phoneNumber)
end


go
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


go
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


/* -----------------------------------------Get records Procs----------------------------------------- *

go
Create proc Get_Club_By_Name


go
Create proc Get_Club_Board


go
Create proc Get_BoardMem_Phones


go
Create proc Get_Obligations


go
Create proc Get_Contract
go
Create proc Get_Marketing_Rights
@contractID Int 
as 
select *
from  Marketing_Rights M
where M.contractID = contractID


*/
/*--------------------------------------------Editing and deleting Procs--------------------------------------------*/

go
Create proc EditPaymentStatus
@contractID int,
@season int,
@installment int,
@paid bit,
@stat bit out
as
begin
	set @stat=1
	declare @idStat int
	if @season=1
	begin
		select @idStat=count(*) from Season1_payment where contractID=@contractID
		if @idStat=1
		begin
			if @installment =1
			begin
				update Season1_payment
				set firstInstallmentPaid = @paid
				where contractID=@contractID
			end
			else
			begin
				if @installment =2
				begin
					update Season1_payment
					set secondInstallmentPaid = @paid
					where contractID=@contractID
				end
				else
				begin
					if @installment =3 
					begin
						update Season1_payment
						set thirdInstallmentPaid = @paid
						where contractID=@contractID
					end
					else
					begin
						if @installment =4
						begin
							update Season1_payment
							set fourthInstallmentPaid = @paid
							where contractID=@contractID
						end
						else
						begin
							set @stat=0
						end
					end
				end
			end
		end
		else
		begin
			set @stat=0
		end 
	end
	else
	begin
		if @season=2
		begin
			select @idStat=count(*) from Season1_payment where contractID=@contractID
			if @idStat=1
			begin
				if @installment =1
				begin
					update Season2_payment
					set firstInstallmentPaid = @paid
					where contractID=@contractID
				end
				else
				begin
					if @installment =2
					begin
						update Season2_payment
						set secondInstallmentPaid = @paid
						where contractID=@contractID
					end
					else
					begin
						if @installment =3 
						begin
							update Season2_payment
							set thirdInstallmentPaid =@paid
							where contractID=@contractID
						end
						else
						begin
							if @installment =4
							begin
								update Season2_payment
								set fourthInstallmentPaid =@paid
								where contractID=@contractID
							end
							else
							begin
								set @stat=0
							end
						end
					end
				end		
			end
			else
			begin
				set @stat=0
			end
		end
		else
		begin
			if @season=3
			begin
				select @idStat=count(*) from Season1_payment where contractID=@contractID
				if @idStat=1
				begin
					if @installment =1
					begin
						update Season3_payment
						set firstInstallmentPaid =@paid
						where contractID=@contractID
					end
					else
					begin
						if @installment =2
						begin
							update Season3_payment
							set secondInstallmentPaid =@paid
							where contractID=@contractID
						end
						else
						begin
							if @installment =3 
							begin
								update Season3_payment
								set thirdInstallmentPaid =@paid
								where contractID=@contractID
							end
							else
							begin
								if @installment =4
								begin
									update Season3_payment
									set fourthInstallmentPaid =@paid
									where contractID=@contractID
								end
								else
								begin
									set @stat=0
								end
							end
						end
					end		
	 			end
				else
				begin
					set @stat=0
				end
			end
			else
			begin
				if @season=4
				begin
					select @idStat=count(*) from Season1_payment where contractID=@contractID
					if @idStat=1
					begin
						if @installment =1
						begin
							update Season4_payment
							set firstInstallmentPaid =@paid
							where contractID=@contractID
						end
						else
						begin
							if @installment =2
							begin
								update Season4_payment
								set secondInstallmentPaid = @paid
								where contractID=@contractID
							end
							else
							begin
								if @installment =3 
								begin
									update Season4_payment
									set thirdInstallmentPaid = @paid
									where contractID=@contractID
								end
								else
								begin
									if @installment =4
									begin
										update Season4_payment
										set fourthInstallmentPaid =@paid
										where contractID=@contractID
									end
									else
									begin
										set @stat=0
									end
								end
							end
						end		
					end
					else
					begin
						set @stat=0
					end
				end
				else
				begin
					set @stat=0
				end
			end
		end
	end
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
	set @total=@t1+@t2+@t3+@t4
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
	set @total=@t1+@t2+@t3+@t4
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
	set @total=@t1+@t2+@t3+@t4
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
	set @total=@t1+@t2+@t3+@t4
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
	set @total=@t1+@t2+@t3+@t4
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
	set @total=@t1+@t2+@t3+@t4
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
	set @paid = @t1+@t2+@t3+@t4
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
	set @due = @t1+@t2+@t3+@t4
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
	set @paid = @t1+@t2+@t3+@t4
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
	set @due = @t1+@t2+@t3+@t4
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
	set @paid = @t1+@t2+@t3+@t4
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
	set @due = @t1+@t2+@t3+@t4
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
	set @paid = @t1+@t2+@t3+@t4
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
	set @due = @t1+@t2+@t3+@t4
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
	set @tot=@t1+@t2+@t3+@t4
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
	set @tot=@t1+@t2+@t3+@t4
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
	set @total=@t1
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
	set @total=@t1
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
	set @total=@t1
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
	set @total=@t1
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
	set @total=@t1
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
	set @total=@t1
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
	set @total=@t1
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
	set @total=@t1
end


go
create proc TotalDue
@id int,
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
	set @tot=@t1+@t2+@t3+@t4
end


go
create proc TotalPaid
@id int,
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
	set @tot=@t1+@t2+@t3+@t4
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
alter proc CalIncentives
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
		declare @t varchar(max)
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
		set @o=@o+(select top 1 val from temp)
		drop table temp
	end
	set @incentives=@o
end