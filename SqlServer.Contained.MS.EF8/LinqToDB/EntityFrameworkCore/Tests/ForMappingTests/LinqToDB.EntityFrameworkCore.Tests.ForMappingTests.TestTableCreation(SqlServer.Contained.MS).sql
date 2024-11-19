--  SqlServer.2008

CREATE TABLE [tempdb]..[#WithIdentity]
(
	[Id]   int            NOT NULL IDENTITY,
	[Name] nvarchar(max)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



--  SqlServer.2008

CREATE TABLE [tempdb]..[#NoIdentity]
(
	[Id]   uniqueidentifier NOT NULL,
	[Name] nvarchar(max)    NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



--  SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#NoIdentity]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#NoIdentity]



--  SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#WithIdentity]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#WithIdentity]



