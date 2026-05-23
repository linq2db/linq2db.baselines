-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_52ff8829bdb8]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_52ff8829bdb8](Id, Data)

-- SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_52ff8829bdb8] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_52ff8829bdb8]

-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_52ff8829bdb8]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_52ff8829bdb8](Id, Data)

-- SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_52ff8829bdb8] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_52ff8829bdb8]

