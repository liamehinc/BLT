USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[usp_SLBloodTestResults]
		--@ClientID = 2668

SELECT	'Return Value' = @return_value

GO
