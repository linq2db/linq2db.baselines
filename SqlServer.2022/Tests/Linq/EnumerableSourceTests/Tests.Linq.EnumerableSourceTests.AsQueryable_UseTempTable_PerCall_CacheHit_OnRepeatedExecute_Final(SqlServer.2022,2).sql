-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_d5700e524724]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_d5700e524724](Id, Data)

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_d5700e524724] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_d5700e524724]

