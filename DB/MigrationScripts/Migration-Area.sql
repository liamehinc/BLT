use [LeadTrackingTesting-Marco]
Go

  insert into [LeadTrackingTesting-Marco]..Area (AreaName)
  select distinct(Area) from TESTAccessImport..BloodPbResults

  insert into [LeadTrackingTesting-Marco]..Area (AreaName)
  select distinct(Area) from TESTAccessImport..Properties
  where Area not in (select Area from TESTAccessImport..BloodPbResults)
  
