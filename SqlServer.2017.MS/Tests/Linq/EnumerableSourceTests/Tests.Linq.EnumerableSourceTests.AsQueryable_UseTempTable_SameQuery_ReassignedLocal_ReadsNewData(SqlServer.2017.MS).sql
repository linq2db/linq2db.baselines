-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_2051f541c82b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2051f541c82b](Id, Data)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_2051f541c82b] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_2051f541c82b]

-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_2051f541c82b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2051f541c82b](Id, Data)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_2051f541c82b] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_2051f541c82b]

