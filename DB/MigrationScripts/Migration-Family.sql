use LeadTrackingTesting
GO

select * from TESTAccessImport..Families

select * from LeadTrackingTesting..Family

select * from [LeadTrackingTesting-Marco]..Language

-- alter table Family add HistoricFamilyID smallint
insert into Family (HistoricFamilyID,LastName,NumberofSmokers,PrimaryLanguageID,Pets,inandout)
select FamilyID,P1LastName,
        Case 
		    when NumSMokers is null then 0
			else NumSmokers
			END
		,LanguageID,
        CASE InOutPets 
			 when 0 then 0
			 else 1
		 END
		 ,
		 CASE InOutPets 
			 when 0 then 0
			 else 1
		 END
from TESTAccessImport..Families as FAM
join [Language] on [Language].PrimLanguageCode = FAM.PrimLanguageCode

-- QUESTIONS is -1 in Families..InOutPets TRUE or FALSE?

