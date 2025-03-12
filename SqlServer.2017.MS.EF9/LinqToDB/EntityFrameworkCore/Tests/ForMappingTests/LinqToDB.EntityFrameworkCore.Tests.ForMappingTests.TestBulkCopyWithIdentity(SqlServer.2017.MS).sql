-- SQLite.MS SqlServer.2017

CREATE TABLE [tempdb]..[#WithIdentity]
(
	[Id]   int            NOT NULL IDENTITY,
	[Name] nvarchar(max)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#WithIdentity](Name)



-- SQLite.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#WithIdentity] [t1]



-- SQLite.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#WithIdentity]



