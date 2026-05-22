-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_c97dfbfc7fce]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_c97dfbfc7fce](Id, Data)

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_c97dfbfc7fce] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_c97dfbfc7fce]

-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_c97dfbfc7fce]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_c97dfbfc7fce](Id, Data)

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_c97dfbfc7fce] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_c97dfbfc7fce]

