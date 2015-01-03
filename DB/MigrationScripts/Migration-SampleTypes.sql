/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [SampleTypeCode]
      ,[SampleType]
  FROM [TESTAccessImport].[dbo].[lkSampleType]


  Insert into LeadTrackingTesting..SampleType (SampleTypeName, SampleTypeDescription)
   Select SampleType,SampleTypeCode from TESTAccessImport..lkSampleType

   insert into LeadTrackingTesting..SampleType (SampleTypeName,SampleTypeDescription) values ('Venous','V')
   insert into LeadTrackingTesting..SampleType (SampleTypeName,SampleTypeDescription) values ('Capillary','C')
  
  
   select * from LeadTrackingTesting..SampleType
   