USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int,
		@BloodTestResultID int

EXEC	@return_value = [dbo].[usp_InsertBloodTestResults]
		@isBaseline = NULL,
		@PersonID = 3224,
		@SampleDate = '2013-11-23',
		@LabSubmissionDate = '20131125',
		@LeadValue = 1.5,
		@LeadValueCategoryID = NULL,
		@HemoglobinValue = 6.8,
		@HemoglobinValueCategoryID = NULL,
		@HematocritValueCategoryID = NULL,
		@LabID = 35,
		@BloodTestCosts = 9,
		@sampleTypeID = 9,
		@notes = NULL,
		@TakenAfterPropertyRemediationCompleted = NULL,
		@BloodTestResultID = @BloodTestResultID OUTPUT

SELECT	@BloodTestResultID as N'@BloodTestResultID'

SELECT	'Return Value' = @return_value

GO
