-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_64bfe9771b4b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_64bfe9771b4b](Id, Data)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_64bfe9771b4b] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_64bfe9771b4b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_64bfe9771b4b]

-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_64bfe9771b4b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_64bfe9771b4b](Id, Data)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_64bfe9771b4b] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_64bfe9771b4b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_64bfe9771b4b]

