-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_4acad5dc96c2]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_4acad5dc96c2](Id, Data)

-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_4acad5dc96c2] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_4acad5dc96c2]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_4acad5dc96c2]

-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_4acad5dc96c2]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_4acad5dc96c2](Id, Data)

-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_4acad5dc96c2] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_4acad5dc96c2]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_4acad5dc96c2]

