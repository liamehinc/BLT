USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int,
		@InsertedAccessAgreementID int

EXEC	@return_value = [dbo].[usp_InsertAccessAgreement]
		@AccessPurposeID = 2,
		@Notes = NULL,
		@AccessAgreementFile = NULL,
		@PropertyID = 11302,
		@InsertedAccessAgreementID = @InsertedAccessAgreementID OUTPUT

SELECT	@InsertedAccessAgreementID as N'@InsertedAccessAgreementID'

SELECT	'Return Value' = @return_value

GO
