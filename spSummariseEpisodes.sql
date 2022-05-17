  create Procedure spSummariseEpisodes
  as
   select   Top(3)c.CompanionID ,c.CompanionName,c.WhoPlayed,(c.CompanionID)
  From Companions as c
  inner join EpisodeCompanion as ec
  on  c.CompanionID=ec.CompanionID
  Group by c.CompanionID,c.CompanionName,c.WhoPlayed
  order by Count(c.CompanionID) desc

  select E.EnemyId,E.EnemyName,E.Description , COUNT(E.EnemyID) as countt
  from Enemy AS E
  inner join EpisodeEnemy AS EE
  on E.EnemyId=EE.EnemyID
  GROUP BY E.EnemyId,E.EnemyName,E.Description
   ORDER BY COUNT(E.EnemyID)  DESC


  exec dbo.spSummariseEpisodes