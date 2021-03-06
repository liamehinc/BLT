USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int,
		@FamilyID int

EXEC	@return_value = [dbo].[usp_InsertNewFamilyWebScreen]
		@FamilyLastName = N'Agnew',
		@StreetNum = N'1600',
		@StreetName = N'Pennsylvania',
		@StreetSuff = N'Avenue',
		@ApartmentNum = NULL,
		@CityName = N'Washington',
		@StateAbbr = N'DC',
		@ZipCode = N'20500',
		@HomePhone = 2028789452,
		@WorkPhone = 2028788937,
		@Language = 1,
		@NumSmokers = 0,
		@Pets = 2,
		@inandout = 1,
		@OtherNotes = NULL,
		@FamilyID = @FamilyID OUTPUT

SELECT	@FamilyID as N'@FamilyID'

SELECT	'Return Value' = @return_value

GO


USE [LeadTrackingTesting-Liam]
GO

DECLARE	@return_value int,
		@FamilyID int

EXEC	@return_value = [dbo].[usp_InsertNewFamilyWebScreen]
		@FamilyLastName = N'Agnew',
		@StreetNum = N'1600',
		@StreetName = N'Pennsylvania',
		@StreetSuff = N'Avenue',
		@ApartmentNum = NULL,
		@CityName = N'Washington',
		@StateAbbr = N'DC',
		@ZipCode = N'20500',
		@HomePhone = 2028789452,
		@WorkPhone = 2028788937,
		@Language = 1,
		@NumSmokers = 0,
		@Pets = 2,
		@inandout = 1,
		@OtherNotes = NULL,
		@FamilyID = @FamilyID OUTPUT

SELECT	@FamilyID as N'@FamilyID'

SELECT	'Return Value' = @return_value

GO


select * from property order by Propertyid desc


select * from family order by Familyid desc