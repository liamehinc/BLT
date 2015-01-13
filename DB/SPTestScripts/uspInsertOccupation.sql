USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int,
		@NewOccupationID int

EXEC	@return_value = [dbo].[usp_InsertOccupation]
		@OccupationName = N'Lumberjack',
		@OccupationDescription = N'one who chops down trees',
		@NewOccupationID = @NewOccupationID OUTPUT

SELECT	@NewOccupationID as N'@NewOccupationID'

SELECT	'Return Value' = @return_value

GO

select * from occupation
