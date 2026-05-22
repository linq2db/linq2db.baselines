-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_dd30eb36c51a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_dd30eb36c51a](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_dd30eb36c51a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_dd30eb36c51a]

-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_dd30eb36c51a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_dd30eb36c51a](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_dd30eb36c51a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_dd30eb36c51a]

