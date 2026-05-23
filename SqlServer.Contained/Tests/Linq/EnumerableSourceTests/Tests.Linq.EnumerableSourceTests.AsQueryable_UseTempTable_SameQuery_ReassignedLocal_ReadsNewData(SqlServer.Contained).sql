-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_a4aca91f8a34]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_a4aca91f8a34](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_a4aca91f8a34] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_a4aca91f8a34]

-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_a4aca91f8a34]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_a4aca91f8a34](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_a4aca91f8a34] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_a4aca91f8a34]

