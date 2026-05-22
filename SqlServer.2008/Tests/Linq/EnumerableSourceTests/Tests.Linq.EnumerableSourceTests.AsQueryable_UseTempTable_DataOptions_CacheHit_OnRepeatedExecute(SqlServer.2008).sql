-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_806f5d8d3d35]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_806f5d8d3d35](Id, Data)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_806f5d8d3d35] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_806f5d8d3d35]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_806f5d8d3d35]

-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_806f5d8d3d35]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_806f5d8d3d35](Id, Data)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_806f5d8d3d35] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_806f5d8d3d35]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_806f5d8d3d35]

