-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_a3b19cbf9cb1]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_a3b19cbf9cb1](Id, Data)

-- SqlServer.2017

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_a3b19cbf9cb1] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_a3b19cbf9cb1]

-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_a3b19cbf9cb1]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_a3b19cbf9cb1](Id, Data)

-- SqlServer.2017

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_a3b19cbf9cb1] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_a3b19cbf9cb1]

