/****** Script for SelectTopNRows command from SSMS  ******/
   use LeadTrackingTesting
   GO
   SELECT TOP 1000 [LabID]
      ,[LabName]
      ,[LabDescription]
      ,[Notes]
  FROM [LeadTrackingTesting].[dbo].[Lab]

  select * from TESTAccessImport..BloodPbResults
  
 alter table Lab add HistoricLabID nvarchar(max)

  insert into LeadTrackingTesting..Lab (LabName,HistoricLabID)
   select LabName,LabID from TESTAccessImport..BloodPbResults where LabId is not null or labName is not null


  select * from LeadTrackingTesting..Lab
