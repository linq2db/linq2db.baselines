-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_2a1e76c5e120]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2a1e76c5e120](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_2a1e76c5e120] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_2a1e76c5e120]

-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_2a1e76c5e120]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2a1e76c5e120](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_2a1e76c5e120] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_2a1e76c5e120]

