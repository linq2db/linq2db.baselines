-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_a58c68f7725f]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_a58c68f7725f](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_a58c68f7725f] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_a58c68f7725f]

-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_a58c68f7725f]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_a58c68f7725f](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_a58c68f7725f] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_a58c68f7725f]

