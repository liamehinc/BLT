USE [LeadTrackingTesting-Liam]
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertPersontoGiftCard]    Script Date: 1/1/2015 5:36:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		William Thier
-- Create date: 20140817
-- Description:	Stored Procedure to insert new PersontoGiftCard records
-- =============================================

ALTER PROCEDURE [dbo].[usp_InsertPersontoGiftCard]   -- usp_InsertPersontoGiftCard
	-- Add the parameters for the stored procedure here
	@PersonID int = NULL,
	@GiftCardID int = NULL
	--@StartDate date = NULL,
	--@EndDate date = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @
    -- Insert statements for procedure here
	BEGIN TRY
		 INSERT into PersontoGiftCard( PersonID, GiftCardID ) --, StartDate, EndDate)
					 Values ( @PersonID, @GiftCardID ) -- , @StartDate, @EndDate);
	END TRY
	BEGIN CATCH
		-- Call procedure to print error information.
		EXECUTE dbo.uspPrintError;

		-- Roll back any active or uncommittable transactions before
		-- inserting information in the ErrorLog.
		IF XACT_STATE() <> 0
		BEGIN
			ROLLBACK TRANSACTION;
		END

		EXECUTE dbo.uspLogError @ErrorLogID = @ErrorLogID OUTPUT;
	END CATCH;
END






