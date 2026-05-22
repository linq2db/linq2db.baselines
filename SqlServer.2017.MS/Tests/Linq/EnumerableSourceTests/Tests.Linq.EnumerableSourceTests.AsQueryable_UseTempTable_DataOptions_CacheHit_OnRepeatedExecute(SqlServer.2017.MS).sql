-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_226a668d12bb]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_226a668d12bb](Id, Data)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_226a668d12bb] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_226a668d12bb]

-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_226a668d12bb]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_226a668d12bb](Id, Data)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_226a668d12bb] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_226a668d12bb]

