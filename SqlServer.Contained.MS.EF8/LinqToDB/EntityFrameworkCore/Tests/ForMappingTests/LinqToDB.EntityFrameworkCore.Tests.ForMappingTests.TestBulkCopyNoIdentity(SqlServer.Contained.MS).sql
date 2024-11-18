--  SqlServer.2008

CREATE TABLE [tempdb]..[#NoIdentity]
(
	[Id]   uniqueidentifier NOT NULL,
	[Name] nvarchar(max)    NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#NoIdentity](Id, Name)



--  SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#NoIdentity] [t1]



--  SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#NoIdentity]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#NoIdentity]



