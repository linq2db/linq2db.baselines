-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_54c465570909]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_54c465570909](Id, Data)

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_54c465570909] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_54c465570909]

-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_54c465570909]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_54c465570909](Id, Data)

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_54c465570909] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_54c465570909]

