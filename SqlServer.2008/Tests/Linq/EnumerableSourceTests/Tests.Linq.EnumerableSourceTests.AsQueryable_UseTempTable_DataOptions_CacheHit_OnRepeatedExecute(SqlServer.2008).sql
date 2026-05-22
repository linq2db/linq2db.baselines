-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_61ebba64af7a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_61ebba64af7a](Id, Data)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_61ebba64af7a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_61ebba64af7a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_61ebba64af7a]

-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_61ebba64af7a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_61ebba64af7a](Id, Data)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_61ebba64af7a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_61ebba64af7a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_61ebba64af7a]

