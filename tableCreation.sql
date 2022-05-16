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