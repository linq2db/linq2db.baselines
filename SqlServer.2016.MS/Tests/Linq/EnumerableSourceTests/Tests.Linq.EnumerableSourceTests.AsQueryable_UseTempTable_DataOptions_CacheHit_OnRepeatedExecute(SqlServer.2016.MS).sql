-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_c9686002f87e]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_c9686002f87e](Id, Data)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_c9686002f87e] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_c9686002f87e]

-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_c9686002f87e]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_c9686002f87e](Id, Data)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_c9686002f87e] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_c9686002f87e]

