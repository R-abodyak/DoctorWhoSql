CREATE TABLE Episode (
EpisodeId int NOT NULL,
Seriesanaumber int NOT NULL,
EpisodeNumber int ,
EpisodeType varchar(20) ,
Title varchar(20) ,
EpisodeDate Date ,
Notes varchar(200) 
PRIMARY Key(EpisodeId))

CREATE TABLE Enemy (
EnemyId int NOT NULL,
EnemyName varchar(20) , 
Description varchar(20),
PRIMARY KEY (EnemyId),
)

CREATE TABLE Companion (
CompanionId int NOT NULL,
CompanionName varchar (20) ,
WhoPlayed varchar(20),
PRIMARY KEY(CompanionId),
)
CREATE Table Doctor (
DoctorId int NOT NULL , 
DoctorNumber int UNIQUE,
DoctorName varchar(20),
BirthDate Date , 
FirstEpisodeDate Date, 
LastEpisodeDate Date,
PRIMARY KEY(DoctorId),

)

CREATE TABLE Author (
AuthorId int ,
AuthorName varchar (20),
PRIMARY KEY(AuthorId),

)
Alter Table Episode
add AuthorId int ;
Alter table Episode 
add Primary Key(EpisodeId)
Alter Table Episode
add DoctorId int ;
ALTER TABLE Episode
ADD FOREIGN KEY (DoctorId) REFERENCES Doctor(DoctorID);
ALTER TABLE Episode

 ADD FOREIGN KEY (AuthorId) REFERENCES Author(AuthorID);



CREATE TABLE EpisodeCompanion (
EpisodeCompanionId int ,
EpisodeId int,
CompanionId int,
PRIMARY KEY(EpisodeCompanionId),
 FOREIGN KEY (EpisodeId) REFERENCES Episode(EpisodeId),
 FOREIGN KEY (CompanionId) REFERENCES Companion(CompanionId),



)

CREATE TABLE EpisodeEnemy (
EpisodeEnemyId int ,
EpisodeId int,
CompanionId int,
PRIMARY KEY(EpisodeEnemyId),
 FOREIGN KEY (EpisodeId) REFERENCES Episode(EpisodeId),
 FOREIGN KEY (CompanionId) REFERENCES Enemy(EnemyId),

)