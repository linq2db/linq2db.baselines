-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_f932a30a1f1e]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_f932a30a1f1e](Id, Data)

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_f932a30a1f1e] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_f932a30a1f1e]

-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_f932a30a1f1e]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_f932a30a1f1e](Id, Data)

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_f932a30a1f1e] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_f932a30a1f1e]

