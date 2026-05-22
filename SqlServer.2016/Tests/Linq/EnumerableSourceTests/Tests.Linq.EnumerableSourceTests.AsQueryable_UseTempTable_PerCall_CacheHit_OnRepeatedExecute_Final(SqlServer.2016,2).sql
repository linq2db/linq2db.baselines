-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_a9c7244e7202]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_a9c7244e7202](Id, Data)

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_a9c7244e7202] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_a9c7244e7202]

