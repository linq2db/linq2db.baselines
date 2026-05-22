-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_beb42536e85b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_beb42536e85b](Id, Data)

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_beb42536e85b] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_beb42536e85b]

-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_beb42536e85b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_beb42536e85b](Id, Data)

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_beb42536e85b] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_beb42536e85b]

