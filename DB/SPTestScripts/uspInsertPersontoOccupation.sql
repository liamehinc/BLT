USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[usp_InsertPersontoOccupation]
		@PersonID = 98765,
		@OccupationID = 28,
		@StartDate = '20150324',
		@EndDate = NULL

SELECT	'Return Value' = @return_value

GO
