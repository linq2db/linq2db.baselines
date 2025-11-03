-- SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#WithIdentity]
(
	[Id]   int            NOT NULL IDENTITY,
	[Name] nvarchar(max)  NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)



INSERT BULK [tempdb]..[#WithIdentity](Name)



-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[tempdb]..[#WithIdentity] [t1]



-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#WithIdentity]



