-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_0c3da5aff102]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_0c3da5aff102](Id, Data)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_0c3da5aff102] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_0c3da5aff102]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_0c3da5aff102]

-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_0c3da5aff102]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_0c3da5aff102](Id, Data)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_0c3da5aff102] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_0c3da5aff102]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_0c3da5aff102]

