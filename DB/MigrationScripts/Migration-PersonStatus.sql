/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ChildStatusCode]
      ,[ChildStatus]
  FROM [TESTAccessImport].[dbo].[lkChildStatus]

  select statusDescription,StatusName from LeadTrackingtesting..Status

  -- Do we need a seperate table for property status and people Status?