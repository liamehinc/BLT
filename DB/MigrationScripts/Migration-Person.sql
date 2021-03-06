/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ChildID]
      ,[LastName]
      ,[FirstName]
      ,[BirthDate]
      ,[Sex]
      ,[SavingsBonds]
      ,[EthnicCode]
      ,[ChildNotes]
      ,[ReleaseCode]
      ,[ReleaseNotes]
      ,[OutOfSite]
      ,[Moved]
      ,[ForeignTravel]
      ,[TravelNotes]
      ,[ReviewStatusCode]
      ,[UpdateDate]
  FROM [TESTAccessImport].[dbo].[Children]
  order by LastName desc

  use LeadTrackingTesting
  GO 

  --- alter table person add personCode smallint

  insert into person (LastName, FirstName, BirthDate, Gender, Moved,PersonCode) 
  select LastName,FirstName, BirthDate,Sex, Moved, ChildID 
   From   TESTAccessImport..Children where LastName is not null
  
  
  declare @newSeed int;
  select @newSeed = max(personID) from person
  dbcc checkident (person, reseed, @newSeed)
  