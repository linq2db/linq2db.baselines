-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_6b33fefca968]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_6b33fefca968](Id, Data)

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_6b33fefca968] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_6b33fefca968]

