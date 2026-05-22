-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_6c030ba0c9fe]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_6c030ba0c9fe](Id, Data)

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_6c030ba0c9fe] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_6c030ba0c9fe]

