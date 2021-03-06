/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [BloodTestResultsID]
      ,[isBaseline]
      ,[PersonID]
      ,[SampleDate]
      ,[LabSubmissionDate]
      ,[LeadValue]
      ,[LeadValueCategoryID]
      ,[HemoglobinValue]
      ,[HemoglobinValueCategoryID]
      ,[HematocritValueCategoryID]
      ,[LabID]
      ,[BloodTestCosts]
      ,[SampleTypeID]
      ,[notes]
      ,[HematocritValue]
      ,[TakenAfterPropertyRemediationCompleted]
  FROM [LeadTrackingTesting].[dbo].[BloodTestResults]


--  select distinct(SampleType) from TESTAccessImport..BloodPbResults
 select * from TESTAccessImport..BloodPbResults

 select * from Lab
  insert into LeadTrackingTesting..BloodTestResults
           (PersonID, SampleDate,LeadValue,HemoglobinValue,LabID,SampleTypeID,BloodTestCosts,isBaseline)
  select PersonID,BPR.SampleDate,BPR.LeadValue,HemoglobinValue = BPR.Hematocrit / 3,
          Lab.LabID,
          ST = case BPR.SampleType
		               When 'C' Then (select SampleTypeID from SampleType where SampleTypeDescription = 'C')
					   When 'V' Then (select SampleTypeID from SampleType where SampleTypeDescription = 'V')
			   END
	     ,BPR.Cost,BPR.Baseline from TESTAccessImport..BloodPbResults BPR
		 join Lab on BPR.LabID = Lab.HistoricLabID
		 join Person on BPR.ChildID = Person.PersonCode

		 

		 select * from BloodTestResults

		 select * from person
