-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_4b8721544c4b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_4b8721544c4b](Id, Data)

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_4b8721544c4b] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_4b8721544c4b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_4b8721544c4b]

-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_4b8721544c4b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_4b8721544c4b](Id, Data)

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_4b8721544c4b] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_4b8721544c4b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_4b8721544c4b]

