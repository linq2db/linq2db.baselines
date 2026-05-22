-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_5468b7931dc4]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_5468b7931dc4](Id, Data)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_5468b7931dc4] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_5468b7931dc4]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_5468b7931dc4]

-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_5468b7931dc4]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_5468b7931dc4](Id, Data)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_5468b7931dc4] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_5468b7931dc4]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_5468b7931dc4]

