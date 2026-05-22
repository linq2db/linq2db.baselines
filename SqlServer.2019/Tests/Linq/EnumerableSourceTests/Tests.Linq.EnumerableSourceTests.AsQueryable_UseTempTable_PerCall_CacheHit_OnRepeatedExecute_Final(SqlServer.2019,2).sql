-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_4e76c72fe377]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_4e76c72fe377](Id, Data)

-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_4e76c72fe377] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_4e76c72fe377]

