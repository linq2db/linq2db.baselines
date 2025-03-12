-- SQLite.MS SqlServer.2017

CREATE TABLE [tempdb]..[#WithIdentity]
(
	[Id]   int            NOT NULL IDENTITY,
	[Name] nvarchar(max)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



-- SQLite.MS SqlServer.2017

CREATE TABLE [tempdb]..[#NoIdentity]
(
	[Id]   uniqueidentifier NOT NULL,
	[Name] nvarchar(max)    NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



-- SQLite.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#NoIdentity]



-- SQLite.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#WithIdentity]



