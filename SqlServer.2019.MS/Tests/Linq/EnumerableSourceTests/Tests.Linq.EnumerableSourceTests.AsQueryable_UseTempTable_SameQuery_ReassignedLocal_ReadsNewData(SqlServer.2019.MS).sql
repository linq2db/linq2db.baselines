-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_f4ed258f0fe4]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_f4ed258f0fe4](Id, Data)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_f4ed258f0fe4] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_f4ed258f0fe4]

-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_f4ed258f0fe4]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_f4ed258f0fe4](Id, Data)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_f4ed258f0fe4] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_f4ed258f0fe4]

