INSERT INTO Enemy (EnemyId,EnemyName, Description)
VALUES (1,'Enemy name','description'),
(2,'Enemy name','description'),
(3,'Enemy name','description'),
(4,'Enemy name','description'),
(5,'Enemy name','description');

INSERT INTO Doctor (DoctorId,DoctorName,DoctorNumber,BirthDate,FirstEpisodeDate,LastEpisodeDate)
VALUES
(6,'D_name1',555,'2018-10-20','2022-08-08','2022-10-20'),
(2,'D_name2',556,'2011-10-20','2022-08-08','2022-10-20'),
(3,'D_name3',557,'2010-10-20','2022-08-08','2022-10-20'),
(4,'D_name4',558,'2015-10-20','2022-08-08','2022-10-20'),
(5,'D_name5',559,'2011-10-20','2022-08-08','2022-10-20');

iNSERT into Author (AuthorId ,AuthorName) 
values
(1,'name1'),
(2,'name2'),
(3,'name3'),
(4,'name4'),
(5,'name5');

Insert into Episode (EpisodeId ,EpisodeNumber,Seriesanaumber,DoctorId,AuthorId)
Values
(1,222,232,6,1),
(2,222,236,6,2),
(3,222,238,2,1),
(4,222,239,3,1),
(5,222,255,3,4);

Insert into EpisodeEnemy (EpisodeEnemyId,EnemyId,EpisodeId)
vALUES
(1,1,2),
(2,2,2),
(3,2,4),
(4,5,1),
(5,3,4);

insert into EpisodeCompanion(EpisodeCompanionId,EpisodeId,CompanionId)
VALUES 
(1,1,1),
(2,3,2),
(3,5,4),
(4,5,4),
(5,1,3);
