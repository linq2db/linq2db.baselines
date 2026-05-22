-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_de46734923a5]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_de46734923a5](Id, Data)

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_de46734923a5] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_de46734923a5]

-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_de46734923a5]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_de46734923a5](Id, Data)

-- SqlServer.2025

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_de46734923a5] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_de46734923a5]

