-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_7b604084af98]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_7b604084af98](Id, Data)

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_7b604084af98] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_7b604084af98]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_7b604084af98]

-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_7b604084af98]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_7b604084af98](Id, Data)

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_7b604084af98] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_7b604084af98]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_7b604084af98]

