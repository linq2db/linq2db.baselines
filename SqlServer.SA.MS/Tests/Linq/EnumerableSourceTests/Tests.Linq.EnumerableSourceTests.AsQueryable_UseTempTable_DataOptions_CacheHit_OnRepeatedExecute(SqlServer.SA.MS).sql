-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_a2df385373a0]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_a2df385373a0](Id, Data)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_a2df385373a0] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_a2df385373a0]

-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_a2df385373a0]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_a2df385373a0](Id, Data)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_a2df385373a0] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_a2df385373a0]

