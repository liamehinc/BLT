/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ActionStatusCode]
      ,[ActionStatus]
  FROM [TESTAccessImport].[dbo].[lkActionStatus]


insert into LeadTrackingTesting..Status (StatusName,StatusDescription)
select ActionStatus,ActionStatusCode from TestAccessImport..lkActionStatus

select * from LeadTrackingTesting..status