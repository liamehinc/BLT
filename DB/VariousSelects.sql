select top 15 * from family order by familyid desc
select top 6 * from person order by personid desc
select top 6 * from property order by propertyid desc
select * from medium
select top 6 * from Questionnaire
select * from occupation
select * from Daycare
select * from SampleType
select * from ConstructionType
select * from Country
select * from units
select * from MediumSampleResults
Select * from SampleLevelCategory
select * from AccessAgreement


alter database [WebSiteAdmin-Dev] set auto_close off

sp_who2


alter table Family alter column primaryLanguageID tinyint null

select * from dm_exec_sql_text 