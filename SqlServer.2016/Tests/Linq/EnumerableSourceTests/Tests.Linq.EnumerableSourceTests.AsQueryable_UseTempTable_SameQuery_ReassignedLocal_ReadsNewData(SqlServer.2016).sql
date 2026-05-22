-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_3a45f7ab8414]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_3a45f7ab8414](Id, Data)

-- SqlServer.2016

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_3a45f7ab8414] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_3a45f7ab8414]

-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_3a45f7ab8414]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_3a45f7ab8414](Id, Data)

-- SqlServer.2016

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_3a45f7ab8414] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_3a45f7ab8414]

