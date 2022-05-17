Delete From c1 from companion c1 
left join EpisodeCompanion e
on 
c1.CompanionId=e.CompanionId
where e.CompanionId is Null
