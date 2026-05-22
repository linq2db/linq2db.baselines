-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_04c17a8a98d6]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_04c17a8a98d6](Id, Data)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_04c17a8a98d6] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_04c17a8a98d6]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_04c17a8a98d6]

-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_04c17a8a98d6]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_04c17a8a98d6](Id, Data)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_04c17a8a98d6] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_04c17a8a98d6]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_04c17a8a98d6]

