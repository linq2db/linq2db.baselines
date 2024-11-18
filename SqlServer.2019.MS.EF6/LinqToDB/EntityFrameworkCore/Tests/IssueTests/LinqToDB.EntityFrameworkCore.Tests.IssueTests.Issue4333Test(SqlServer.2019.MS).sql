--  SqlServer.2008

CREATE TABLE [tempdb]..[#Identities]
(
	[Id]   int           NOT NULL IDENTITY,
	[Name] nvarchar(50)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#Identities](Name)



--  SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#Identities] [t1]
ORDER BY
	[t1].[Id]



--  SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#Identities]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#Identities]



