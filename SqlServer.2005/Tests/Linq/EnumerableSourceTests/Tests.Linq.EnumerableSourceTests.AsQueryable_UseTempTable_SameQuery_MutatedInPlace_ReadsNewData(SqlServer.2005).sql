-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_2d6591792d9a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2d6591792d9a](Id, Data)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_2d6591792d9a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_2d6591792d9a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_2d6591792d9a]

-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_2d6591792d9a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_2d6591792d9a](Id, Data)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_2d6591792d9a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_2d6591792d9a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_2d6591792d9a]

