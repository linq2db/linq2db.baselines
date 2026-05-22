-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_8f67dae4b47f]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_8f67dae4b47f](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_8f67dae4b47f] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_8f67dae4b47f]

-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_8f67dae4b47f]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_8f67dae4b47f](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_8f67dae4b47f] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_8f67dae4b47f]

