DROP TABLE EpisodeEnemy;
CREATE TABLE EpisodeEnemy (
EpisodeEnemyId int ,
EpisodeId int,
EnemyId int,
PRIMARY KEY(EpisodeEnemyId),
 FOREIGN KEY (EpisodeId) REFERENCES Episode(EpisodeId),
 FOREIGN KEY (EnemyId) REFERENCES Enemy(EnemyId));

