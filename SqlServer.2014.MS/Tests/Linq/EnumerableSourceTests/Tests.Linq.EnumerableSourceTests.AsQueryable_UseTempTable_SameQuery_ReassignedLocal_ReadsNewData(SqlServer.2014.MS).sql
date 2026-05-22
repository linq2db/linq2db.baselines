-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_98a87d1a1ac8]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_98a87d1a1ac8](Id, Data)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_98a87d1a1ac8] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_98a87d1a1ac8]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_98a87d1a1ac8]

-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_98a87d1a1ac8]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_98a87d1a1ac8](Id, Data)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_98a87d1a1ac8] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_98a87d1a1ac8]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_98a87d1a1ac8]

