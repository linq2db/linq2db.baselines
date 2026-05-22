-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_38357d01360a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_38357d01360a](Id, Data)

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_38357d01360a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_38357d01360a]

-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_38357d01360a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_38357d01360a](Id, Data)

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_38357d01360a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_38357d01360a]

