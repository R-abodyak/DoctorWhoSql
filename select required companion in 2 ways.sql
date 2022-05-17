select Companion.CompanionId from Companion
left join EpisodeCompanion 
on 
Companion.CompanionId=EpisodeCompanion.CompanionId
where EpisodeCompanion.CompanionId is Null

select CompanionId FROM Companion 
WHERE CompanionId NOT IN 
(select CompanionId FROM EpisodeCompanion);


