USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int,
		@NewHouseholdItemID int

EXEC	@return_value = [dbo].[usp_InsertHouseholdSourcesofLead]
		@HouseholdItemName = N'Sinkers',
		@HouseholdItemDescription = N'fishing weights',
		@NewHouseholdItemID = @NewHouseholdItemID OUTPUT

SELECT	@NewHouseholdItemID as N'@NewHouseholdItemID'

SELECT	'Return Value' = @return_value

GO

select * from HouseholdSourcesofLead