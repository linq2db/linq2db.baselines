-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_cf59ff0f2600]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_cf59ff0f2600](Id, Data)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_cf59ff0f2600] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cf59ff0f2600]

-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_cf59ff0f2600]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_cf59ff0f2600](Id, Data)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_cf59ff0f2600] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cf59ff0f2600]

