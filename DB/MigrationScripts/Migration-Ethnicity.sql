/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [EthnicCode]
      ,[EthnicBackground]
  FROM [TESTAccessImport].[dbo].[lkEthnicBackground]

  insert into LeadTrackingTesting..Ethnicity (Ethnicity, HistoricEthnicityCode)
  select ethnicBackground,ethnicCode from TESTAccessImport..lkEthnicBackground


  select * from LeadTrackingTesting..Ethnicity