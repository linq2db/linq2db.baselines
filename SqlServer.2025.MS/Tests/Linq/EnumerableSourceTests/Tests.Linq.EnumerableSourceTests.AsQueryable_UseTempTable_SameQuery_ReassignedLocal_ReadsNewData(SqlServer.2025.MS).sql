-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_91225b6e6b4c]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_91225b6e6b4c](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_91225b6e6b4c] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_91225b6e6b4c]

-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_91225b6e6b4c]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_91225b6e6b4c](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[r].[Id],
	[r].[Data]
FROM
	[Person] [x]
		CROSS JOIN [tempdb]..[#T_91225b6e6b4c] [r]
WHERE
	[x].[PersonID] = 1
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_91225b6e6b4c]

