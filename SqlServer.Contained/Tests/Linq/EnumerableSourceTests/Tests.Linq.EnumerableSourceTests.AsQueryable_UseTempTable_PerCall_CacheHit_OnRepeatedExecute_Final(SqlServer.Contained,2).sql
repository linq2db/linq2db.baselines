-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_566f8a474a9f]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_566f8a474a9f](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_566f8a474a9f] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_566f8a474a9f]

