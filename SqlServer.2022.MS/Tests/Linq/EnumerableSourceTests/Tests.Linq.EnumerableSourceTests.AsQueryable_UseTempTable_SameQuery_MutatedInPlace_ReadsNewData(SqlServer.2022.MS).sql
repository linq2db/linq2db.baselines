-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_75ffe09f8aac]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_75ffe09f8aac](Id, Data)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_75ffe09f8aac] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_75ffe09f8aac]

-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_75ffe09f8aac]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_75ffe09f8aac](Id, Data)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_75ffe09f8aac] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_75ffe09f8aac]

