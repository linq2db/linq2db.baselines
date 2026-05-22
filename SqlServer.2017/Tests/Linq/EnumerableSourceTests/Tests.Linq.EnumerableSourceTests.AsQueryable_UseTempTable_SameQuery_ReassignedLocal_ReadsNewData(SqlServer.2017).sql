-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_12a0fc1c8f98]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_12a0fc1c8f98](Id, Data)

-- SqlServer.2017

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_12a0fc1c8f98] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_12a0fc1c8f98]

-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_12a0fc1c8f98]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_12a0fc1c8f98](Id, Data)

-- SqlServer.2017

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_12a0fc1c8f98] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_12a0fc1c8f98]

