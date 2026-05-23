-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_4846067b003d]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_4846067b003d](Id, Data)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_4846067b003d] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_4846067b003d]

-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_4846067b003d]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_4846067b003d](Id, Data)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_4846067b003d] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_4846067b003d]

