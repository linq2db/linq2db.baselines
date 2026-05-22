-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_05e9d1e2f4ef]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_05e9d1e2f4ef](Id, Data)

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_05e9d1e2f4ef] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_05e9d1e2f4ef]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_05e9d1e2f4ef]

-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_05e9d1e2f4ef]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_05e9d1e2f4ef](Id, Data)

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_05e9d1e2f4ef] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_05e9d1e2f4ef]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_05e9d1e2f4ef]

