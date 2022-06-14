USE TestDB

CREATE TABLE Ranks
(
	Id int   NOT NULL CONSTRAINT PK_Ranks_Id PRIMARY KEY IDENTITY,
	[Rank] varchar(50) NOT NULL,
)

CREATE TABLE Offices
(
	Id int NOT NULL CONSTRAINT PK_Offices_Id PRIMARY KEY IDENTITY, 
	[Address] varchar(100) NOT NULL
)

CREATE TABLE Weapons
(
	Id tinyint  NOT NULL CONSTRAINT PK_Weapons_Id PRIMARY KEY IDENTITY, 
	Model varchar(100) NOT NULL
)

CREATE TABLE  Squads 
(
	Id tinyint  NOT NULL CONSTRAINT PK_Squads_Id PRIMARY KEY IDENTITY, 
	[Name] varchar(100) NOT NULL
)

CREATE TABLE Soldiers
(
	Id int NOT NULL CONSTRAINT PK_Soldiers_Id PRIMARY KEY IDENTITY,
	[Name] varchar(100) NOT NULL,
	[RankID] int CONSTRAINT FK_Soldiers_RankID FOREIGN KEY REFERENCES Ranks(Id),
	SquadId tinyint CONSTRAINT FK_Soldiers_SquadId FOREIGN KEY REFERENCES Squads(Id),
	OfficeId int CONSTRAINT FK_Soldiers_OfficeId FOREIGN KEY REFERENCES Offices(Id),
	WeaponId tinyint CONSTRAINT FK_Soldiers_WeaponId FOREIGN KEY REFERENCES Weapons(Id),
	WeaponReceivedFromId int CONSTRAINT FK_Soldiers_WeaponReceivedFromId FOREIGN KEY REFERENCES Soldiers(Id)
)

USE master
DROP DATABASE TestDB
