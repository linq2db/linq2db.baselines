-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_ea85f4c13f62]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_ea85f4c13f62](Id, Data)

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_ea85f4c13f62] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_ea85f4c13f62]

-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_ea85f4c13f62]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_ea85f4c13f62](Id, Data)

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_ea85f4c13f62] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_ea85f4c13f62]

