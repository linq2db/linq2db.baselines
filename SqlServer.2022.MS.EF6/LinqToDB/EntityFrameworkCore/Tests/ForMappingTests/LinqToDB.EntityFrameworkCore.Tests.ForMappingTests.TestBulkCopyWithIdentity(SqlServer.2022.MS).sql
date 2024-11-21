--  SqlServer.2008

CREATE TABLE [tempdb]..[#WithIdentity]
(
	[Id]   int            NOT NULL IDENTITY,
	[Name] nvarchar(max)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#WithIdentity](Name)



--  SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#WithIdentity] [t1]



--  SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#WithIdentity]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#WithIdentity]



