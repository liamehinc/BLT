/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [PropertyID]
      ,[FamilyID]
      ,[FPLinkStart]
      ,[FPLinkEnd]
      ,[Type]
      ,[Revision]
      ,[Updated]
  FROM [TESTAccessImport].[dbo].[FamilyPropertyLink]
  where FamilyID = 309
  order by FamilyID,PropertyID,Updated desc

  insert into [LeadTrackingTesting-Marco]..PersontoProperty (PersonID,PropertyID,FamilyID,StartDate,EndDate,isPrimaryResidence)
	  select distinct P.PersonID,Prop.PropertyID, FPL.familyID,isNULL(FPL.FPLinkStart,FPL.Updated),FPL.FPLinkEnd,1
	  from TESTAccessImport..ChildFamilyLink as CFL
	  left outer join TESTAccessImport..Children as CHILD on CFL.ChildID = Child.ChildId
	  join TESTAccessImport..Families as F on F.FamilyID = CFL.FamilyID 
	  join TESTAccessImport..FamilyPropertyLink FPL on FPL.FamilyID = F.FamilyID
	  join [LeadTrackingTesting-Marco]..Person as P on P.PersonCode = CFL.ChildID
	  join [LeadTrackingTesting-Marco]..Property as Prop on Prop.HistoricPropertyID = FPL.PropertyID
	  join [LeadTrackingTesting-Marco]..Family as Fam on Fam.HistoricFamilyID = F.FamilyID
	  where CFL.ChildID is not null and FPL.PropertyID is not null

  update [LeadTrackingTesting-Marco]..PersontoProperty set isPrimaryResidence = 0 
  where PersonID  in (select  P.PersonID from TESTAccessImport..ChildFamilyLink as CFL
				   left outer join TESTAccessImport..Children as CHILD on CFL.ChildID = Child.ChildId
				   join TESTAccessImport..Families as F on F.FamilyID = CFL.FamilyID 
				   join [LeadTrackingTesting-Marco]..Person as P on P.PersonCode = CFL.ChildID
				   where Child.ChildID is not null
				   group by P.PersonID
				   having count(P.PersonID) > 1
				  )

  select * from [LeadTrackingTesting-Marco]..PersontoProperty


  /*

   select distinct Child.FirstName,F.P1FirstName,CFL.ChildID,CFL.FamilyID --CFL.* 
  from TESTAccessImport..ChildFamilyLink as CFL
  left outer join TESTAccessImport..Children as CHILD on CFL.ChildID = Child.ChildId
  join TESTAccessImport..Families as F on F.FamilyID = CFL.FamilyID 
  where Child.ChildID is not null
  order by CFL.ChildID

  select  count(Child.FirstName),count(F.P1FirstName),CFL.ChildID,count(CFL.FamilyID) --CFL.* 
  from TESTAccessImport..ChildFamilyLink as CFL
  left outer join TESTAccessImport..Children as CHILD on CFL.ChildID = Child.ChildId
  join TESTAccessImport..Families as F on F.FamilyID = CFL.FamilyID 
  where Child.ChildID is not null
  group by CFL.ChildID
  having count(CFL.ChildID) > 1
  order by CFL.ChildID
  */
  
  select * from [LeadTrackingTesting-Marco]..PersontoProperty where isPrimaryResidence = 0
