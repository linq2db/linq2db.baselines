-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_2654d0b490db]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2654d0b490db](Id, Data)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_2654d0b490db] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_2654d0b490db]

-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_2654d0b490db]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2654d0b490db](Id, Data)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_2654d0b490db] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_2654d0b490db]

