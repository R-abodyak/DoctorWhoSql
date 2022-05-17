Create FUNCTION fnCompanion (@EpisodeId int)
Returns VARCHAR(100) as 
begin
DECLARE @Names VARCHAR(100)  
SELECT @Names = COALESCE(@Names + ', ', '') + [CompanionName] 
From [DoctorWhoCore].[dbo].[Companions]
inner join [DoctorWhoCore].[dbo].[EpisodeCompanion] on
 [Companions].CompanionID=[EpisodeCompanion].CompanionID
WHERE [DBO].[EpisodeCompanion].EpisodeId=@EpisodeId
return @Names
end;