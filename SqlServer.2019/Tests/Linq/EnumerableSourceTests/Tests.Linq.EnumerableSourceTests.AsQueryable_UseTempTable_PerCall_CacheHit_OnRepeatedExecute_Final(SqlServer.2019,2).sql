-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_255be5ac2d9a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_255be5ac2d9a](Id, Data)

-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_255be5ac2d9a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_255be5ac2d9a]

