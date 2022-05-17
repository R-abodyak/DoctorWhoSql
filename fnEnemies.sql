Create FUNCTION fnEnemies (@EpisodeId int)
Returns VARCHAR(100) as 
begin
DECLARE @Names VARCHAR(100)  
SELECT @Names = COALESCE(@Names + ', ', '') + [EnemyName] 
From [DoctorWhoCore].[dbo].[Enemy]
inner join [DoctorWhoCore].[dbo].[EpisodeEnemy] on
[Enemy].EnemyId=[EpisodeEnemy].EnemyID
WHERE [EpisodeEnemy].EpisodeId=@EpisodeId
return @Names
end;