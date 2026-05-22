-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_2851c40eae3f]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2851c40eae3f](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_2851c40eae3f] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_2851c40eae3f]

-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_2851c40eae3f]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2851c40eae3f](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_2851c40eae3f] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_2851c40eae3f]

