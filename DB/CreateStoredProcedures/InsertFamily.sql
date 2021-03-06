USE [LeadTrackingTesting-Marco]
GO
/****** Object:  StoredProcedure [dbo].[usp_InsertFamily]    Script Date: 11/20/2014 11:20:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		William Thier
-- Create date: 20140205
-- Description:	Stored Procedure to insert new Family names
-- =============================================

ALTER PROCEDURE [dbo].[usp_InsertFamily]   -- usp_InsertFamily "Bonifacic"
	-- Add the parameters for the stored procedure here
	@LastName varchar(50),
	@NumberofSmokers tinyint = 0,
	@PrimaryLanguageID tinyint = 1,
	@Notes varchar(3000) = NULL,
	@Pets bit = 0,
	@inandout bit = NULL

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @DBNAME NVARCHAR(128);
	SET @DBNAME = DB_NAME();

	BEGIN TRY
	     if Exists (select LastName from Family where LastName = @LastName) 
		 BEGIN
		 RAISERROR
			(N'The Family name: %s already exists.',
			11, -- Severity.
			-1, -- State.
			@LastName)
			select Family.LastName,Family.FamilyID,Person.FirstName from Family 
			Left outer join PersonToFamily on PersonToFamily.FamilyID = Family.FamilyID
			left outer join Person on Person.PersonId = PersonToFamily.PersonId
			where Family.LastName = @LastName;
		return
		 END
	
		INSERT into Family ( LastName,  NumberofSmokers,  PrimaryLanguageID,  Notes, Pets, inandout) 
		            Values (@LastName, @NumberofSmokers, @PrimaryLanguageID, @Notes, @Pets, @inandout)
		SELECT SCOPE_IDENTITY();  -- uncomment to return primary key of inserted values
	END TRY
	BEGIN CATCH
	    SELECT ERROR_NUMBER() AS ErrorNumber
        ,ERROR_SEVERITY() AS ErrorSeverity
        ,ERROR_STATE() AS ErrorState
        ,ERROR_PROCEDURE() AS ErrorProcedure
        ,ERROR_LINE() AS ErrorLine
        ,ERROR_MESSAGE() AS ErrorMessage;
	END CATCH
END




