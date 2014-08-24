Create proc SignIn 
@username varchar(20),
@password varchar(30),
@success int output
as 
select @success= Count(*)
from Users U
where U.username=@username and U.passKEY=@password


Create proc View_Marketing_Rights
@contractID Int 
as 
select *
from  Marketing_Rights M
where M.contractID = contractID