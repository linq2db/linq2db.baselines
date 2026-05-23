-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_cf3d0d33a974]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_cf3d0d33a974](Id, Data)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_cf3d0d33a974] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cf3d0d33a974]

-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_cf3d0d33a974]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_cf3d0d33a974](Id, Data)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_cf3d0d33a974] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cf3d0d33a974]

