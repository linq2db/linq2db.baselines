-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_9003d56732b8]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_9003d56732b8](Id, Data)

-- SqlServer.2014

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_9003d56732b8] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_9003d56732b8]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_9003d56732b8]

-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_9003d56732b8]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_9003d56732b8](Id, Data)

-- SqlServer.2014

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_9003d56732b8] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_9003d56732b8]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_9003d56732b8]

