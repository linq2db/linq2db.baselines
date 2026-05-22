-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_50fcbdd6fc77]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_50fcbdd6fc77](Id, Data)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_50fcbdd6fc77] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_50fcbdd6fc77]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_50fcbdd6fc77]

-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_50fcbdd6fc77]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_50fcbdd6fc77](Id, Data)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_50fcbdd6fc77] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_50fcbdd6fc77]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_50fcbdd6fc77]

