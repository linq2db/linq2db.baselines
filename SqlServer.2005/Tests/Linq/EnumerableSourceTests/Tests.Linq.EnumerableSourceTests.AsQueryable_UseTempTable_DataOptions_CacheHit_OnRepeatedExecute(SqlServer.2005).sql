-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_9da5aafe21e5]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_9da5aafe21e5](Id, Data)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_9da5aafe21e5] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_9da5aafe21e5]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_9da5aafe21e5]

-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_9da5aafe21e5]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_9da5aafe21e5](Id, Data)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_9da5aafe21e5] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_9da5aafe21e5]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_9da5aafe21e5]

