-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_79b5a98d5d32]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_79b5a98d5d32](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_79b5a98d5d32] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_79b5a98d5d32]

-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_79b5a98d5d32]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_79b5a98d5d32](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_79b5a98d5d32] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_79b5a98d5d32]

