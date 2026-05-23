-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_d2efb2a8942b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_d2efb2a8942b](Id, Data)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_d2efb2a8942b] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_d2efb2a8942b]

-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_d2efb2a8942b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_d2efb2a8942b](Id, Data)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_d2efb2a8942b] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_d2efb2a8942b]

