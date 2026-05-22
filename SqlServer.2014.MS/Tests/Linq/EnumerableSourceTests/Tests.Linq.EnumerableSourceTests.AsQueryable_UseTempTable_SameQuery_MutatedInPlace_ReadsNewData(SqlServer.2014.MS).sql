-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_02638324c21a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_02638324c21a](Id, Data)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_02638324c21a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_02638324c21a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_02638324c21a]

-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_02638324c21a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_02638324c21a](Id, Data)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_02638324c21a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_02638324c21a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_02638324c21a]

