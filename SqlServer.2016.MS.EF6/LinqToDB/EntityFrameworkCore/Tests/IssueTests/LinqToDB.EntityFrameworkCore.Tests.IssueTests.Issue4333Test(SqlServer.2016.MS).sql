-- SqlServer.2016

CREATE TABLE [tempdb]..[#Identities]
(
	[Id]   int           NOT NULL IDENTITY,
	[Name] nvarchar(50)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#Identities](Name)



-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#Identities] [t1]
ORDER BY
	[t1].[Id]



-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#Identities]



