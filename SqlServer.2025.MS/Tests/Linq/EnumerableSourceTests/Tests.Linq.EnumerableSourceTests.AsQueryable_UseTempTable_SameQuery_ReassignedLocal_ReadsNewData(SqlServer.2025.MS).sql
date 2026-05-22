-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_50dc8d65fd79]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_50dc8d65fd79](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_50dc8d65fd79] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_50dc8d65fd79]

-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_50dc8d65fd79]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_50dc8d65fd79](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_50dc8d65fd79] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_50dc8d65fd79]

