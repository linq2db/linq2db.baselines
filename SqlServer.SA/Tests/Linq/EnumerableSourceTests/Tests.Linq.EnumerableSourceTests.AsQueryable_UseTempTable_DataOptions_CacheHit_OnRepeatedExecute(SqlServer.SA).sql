-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_e3974189f2c7]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_e3974189f2c7](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_e3974189f2c7] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_e3974189f2c7]

-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_e3974189f2c7]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_e3974189f2c7](Id, Data)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_e3974189f2c7] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_e3974189f2c7]

