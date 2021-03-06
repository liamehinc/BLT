USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int,
		@Blood_Test_Results_ID int

EXEC	@return_value = [dbo].[usp_InsertNewBloodLeadTestResultsWebScreen]
		@Person_ID = 2289,
		@Sample_Date = '20141212',
		@Lab_Date = '20141215',
		@Blood_Lead_Result = 6.7,
		@Test_Type = 9,
		@Lab = NULL,
		@Lab_ID = 338,
		@Child_Status_Code = NULL,
		@Hemoglobin_Value = 11.4,
		@Blood_Test_Results_ID = @Blood_Test_Results_ID OUTPUT

SELECT	@Blood_Test_Results_ID as N'@Blood_Test_Results_ID'

SELECT	'Return Value' = @return_value

GO
