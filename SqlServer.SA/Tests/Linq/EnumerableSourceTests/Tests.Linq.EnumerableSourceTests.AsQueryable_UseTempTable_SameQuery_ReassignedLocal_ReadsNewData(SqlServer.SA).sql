-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_99f47d9dd5a1]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_99f47d9dd5a1](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_99f47d9dd5a1] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_99f47d9dd5a1]

-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_99f47d9dd5a1]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_99f47d9dd5a1](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_99f47d9dd5a1] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_99f47d9dd5a1]

