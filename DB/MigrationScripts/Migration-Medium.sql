/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [MediumCode]
      ,[Medium]
  FROM [TESTAccessImport].[dbo].[lkMedia]


  insert into LeadTrackingTesting..Medium (MediumName,HistoricMediumCode)
   select Medium,MediumCode from TESTAccessImport..lkMedia

   use LeadTrackingTesting
   GO

   update LeadTrackingTesting..Medium set TriggerLevel = 2000, 
   TriggerLevelUnits = (select UnitsID from LeadTrackingTesting..Units where Units = 'mg/kg')
   where LeadTrackingTesting..Medium.MediumName = 'Dust'

	update LeadTrackingTesting..Medium set TriggerLevel = 6, 
   TriggerLevelUnits = (select UnitsID from LeadTrackingTesting..Units where Units = 'mg/cm2')
   where LeadTrackingTesting..Medium.MediumName = 'Paint'

   update LeadTrackingTesting..Medium set TriggerLevel = 15, 
   TriggerLevelUnits = (select UnitsID from LeadTrackingTesting..Units where Units = 'ug/L')
   where LeadTrackingTesting..Medium.MediumName = 'Water'

   -- need to break out commercial/residential soil from Medium table


  select * from LeadTrackingTesting..Medium

  select * from LeadTrackingTesting..Units