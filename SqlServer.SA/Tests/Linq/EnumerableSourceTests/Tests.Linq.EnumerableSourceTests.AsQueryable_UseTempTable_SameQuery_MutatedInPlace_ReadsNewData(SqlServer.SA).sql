-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_0829516e13dc]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_0829516e13dc](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_0829516e13dc] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_0829516e13dc]

-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_0829516e13dc]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_0829516e13dc](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_0829516e13dc] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_0829516e13dc]

