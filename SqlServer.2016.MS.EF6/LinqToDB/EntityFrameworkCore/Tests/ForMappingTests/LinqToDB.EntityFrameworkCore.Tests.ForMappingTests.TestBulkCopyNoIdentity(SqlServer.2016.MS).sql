﻿-- SQLite.MS SqlServer.2016

CREATE TABLE [tempdb]..[#NoIdentity]
(
	[Id]   uniqueidentifier NOT NULL,
	[Name] nvarchar(max)    NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#NoIdentity](Id, Name)



-- SQLite.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#NoIdentity] [t1]



-- SQLite.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#NoIdentity]



