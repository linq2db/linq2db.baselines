-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_9e5aa603d4a6]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_9e5aa603d4a6](Id, Data)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_9e5aa603d4a6] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_9e5aa603d4a6]

-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_9e5aa603d4a6]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_9e5aa603d4a6](Id, Data)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_9e5aa603d4a6] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_9e5aa603d4a6]

