﻿--  SqlServer.2017

CREATE TABLE [tempdb]..[#NoIdentity]
(
	[Id]   uniqueidentifier NOT NULL,
	[Name] nvarchar(max)    NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#NoIdentity](Id, Name)



--  SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#NoIdentity] [t1]



--  SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#NoIdentity]



