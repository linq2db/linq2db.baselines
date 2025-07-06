-- SqlServer.2022

CREATE TABLE [tempdb]..[#WithIdentity]
(
	[Id]   int            NOT NULL IDENTITY,
	[Name] nvarchar(max)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



-- SqlServer.2022

CREATE TABLE [tempdb]..[#NoIdentity]
(
	[Id]   uniqueidentifier NOT NULL,
	[Name] nvarchar(max)    NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#NoIdentity]



-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#WithIdentity]



