USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int,
		@newPersonID int,
		@newDaycareID int

EXEC	@return_value = [dbo].[usp_InsertPersontoDaycare]
		@PersonID = 2452,
		@DaycareID = 3,
		@StartDate = '20140922',
		@DaycareNotes = N'really enjoys hiding in the coat racks'

SELECT	'Return Value' = @return_value

GO
