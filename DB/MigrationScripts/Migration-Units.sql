/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [UnitsCode]
      ,[Units]
  FROM [TESTAccessImport].[dbo].[lkUnits]

  insert into LeadTrackingTesting..Units (Units, UnitsDescription)
    select Units,UnitsCode from TESTAccessImport..lkUnits

select * from LeadTrackingTesting..Units

	insert into LeadTrackingTesting..Units (Units) VALUES('mg/kg')
	insert into LeadTrackingTesting..Units (Units) VALUES('ug/L')