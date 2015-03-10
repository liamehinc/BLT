/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [CleanupStatusCode]
      ,[CleanupStatus]
  FROM [TESTAccessImport].[dbo].[lkCleanupStatus]

Insert into leadTrackingTesting..CleanupStatus (CleanupStatusName, HistoricCleanupStatusID)
  select CleanupStatus, CleanUpStatusCode from TestAccessImport..lkCleanupStatus