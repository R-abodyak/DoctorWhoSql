cREATE VIEW viewEpisodes as
SELECT        A.AuthorName, D.DoctorName, dbo.fnEnemies(E.EpisodeId) AS EnemiesNames ,dbo.fnCompanion(E.EpisodeId) as CompanionsNames
FROM            dbo.Episodes AS E INNER JOIN
                         dbo.Authors AS A ON E.AuthorId = A.AuthorId INNER JOIN
                         dbo.Doctors AS D ON E.DoctorId = D.DoctorId


SELECT * FROM viewEpisodes