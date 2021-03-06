USE [LeadTrackingTesting-Liam]
GO


DECLARE	@return_value int,
		@PropertyID int
BEGIN TRANSACTION InsProperty
	EXEC	@return_value = [dbo].[usp_InsertProperty]
			@ConstructionTypeID = NULL,
			@AreaID = 35,
			@isinHistoricDistrict = 0,
			@isRemodeled = 0,
			@RemodelDate = NULL,
			@isinCityLimits = 1,
			@StreetNumber = 28,
			@Street = N'Hazel',
			@StreetSuffix = N'St',
			@Apartmentnumber = NULL,
			@City = N'Leadville',
			@State = N'CO',
			@Zipcode = N'80461',
			@YearBuilt = 1918,
			@Ownerid = 2368,
			@isOwnerOccuppied = 1,
			@ReplacedPipesFaucets = 0,
			@TotalRemediationCosts = 53000,
			@Notes = NULL,
			@isResidential = 1,
			@isCurrentlyBeingRemodeled = 0,
			@hasPeelingChippingPaint = 0,
			@County = N'Lake',
			@isRental = 0,
			@PropertyID = @PropertyID OUTPUT

			COMMIT TRANSACTION InsProperty
SELECT	@PropertyID as N'@PropertyID'

SELECT	'Return Value' = @return_value

GO

select * from property order by propertyID desc
select * from area