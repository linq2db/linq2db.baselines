-- SqlServer.2022
CREATE TABLE [tempdb]..[#Identities]
(
	[Id]   int           NOT NULL IDENTITY,
	[Name] nvarchar(50)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#Identities](Name)



-- SqlServer.2022
SELECT
	COUNT(*)
FROM
	[tempdb]..[#Identities] [t1]



-- SqlServer.2022
SELECT
	[e].[Name]
FROM
	[tempdb]..[#Identities] [e]
ORDER BY
	[e].[Id]



-- SqlServer.2022
DROP TABLE IF EXISTS [tempdb]..[#Identities]



