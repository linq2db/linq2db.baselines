-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_c3a0a0b406d5]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_c3a0a0b406d5](Id, Data)

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_c3a0a0b406d5] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_c3a0a0b406d5]

