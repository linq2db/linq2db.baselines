-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_385135686c8a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_385135686c8a](Id, Data)

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_385135686c8a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_385135686c8a]

-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_385135686c8a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_385135686c8a](Id, Data)

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_385135686c8a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_385135686c8a]

