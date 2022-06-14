CREATE DATABASE TestDB
ON
(
NAME = 'TestDB',
FILENAME = 'D:\TestDB.mdf',
MAXSIZE =  100MB,
SIZE  =  30MB
)
LOG ON
(
	NAME = 'LogDB',
	FILENAME = 'E:\LogDB.ldf',
	MAXSIZE =  100MB,
	SIZE  =  5MB
)
COLLATE Cyrillic_General_CI_AS

