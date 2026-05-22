-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_8a3a4b065cc1]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_8a3a4b065cc1](Id, Data)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_8a3a4b065cc1] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_8a3a4b065cc1]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_8a3a4b065cc1]

-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_8a3a4b065cc1]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_8a3a4b065cc1](Id, Data)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_8a3a4b065cc1] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_8a3a4b065cc1]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_8a3a4b065cc1]

