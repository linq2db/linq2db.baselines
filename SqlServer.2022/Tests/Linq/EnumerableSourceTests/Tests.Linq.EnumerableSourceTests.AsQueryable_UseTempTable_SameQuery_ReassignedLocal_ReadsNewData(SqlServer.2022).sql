-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_fdeddfd81d45]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_fdeddfd81d45](Id, Data)

-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_fdeddfd81d45] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_fdeddfd81d45]

-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_fdeddfd81d45]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_fdeddfd81d45](Id, Data)

-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_fdeddfd81d45] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_fdeddfd81d45]

