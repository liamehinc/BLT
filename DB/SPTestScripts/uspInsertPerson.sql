USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int,
		@PID int

EXEC	@return_value = [dbo].[usp_InsertPerson]
		@FirstName = N'Julius',
		@MiddleName = N'R',
		@LastName = N'Romeri',
		@BirthDate = '20140122',
		@Gender = N'M',
		@StatusID = NULL,
		@ForeignTravel = 1,
		@OutofSite = 0,
		@EatsForeignFood = 1,
		@PatientID = NULL,
		@RetestDate = NULL,
		@Moved = 0,
		@MovedDate = NULL,
		@isClosed = 0,
		@isResolved = 0,
		@Notes = NULL,
		@GuardianID = NULL,
		@isSmoker = 0,
		@PID = @PID OUTPUT

SELECT	@PID as N'@PID'

SELECT	'Return Value' = @return_value

GO

select * from Person order by personID desc
