USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[usp_InsertPropertytoMedium]
		@PropertyID = 11306,
		@MediumID = 3,
		@MediumTested = 1

SELECT	'Return Value' = @return_value

GO

