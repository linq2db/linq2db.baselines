-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_8766b382e4db]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_8766b382e4db](Id, Data)

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_8766b382e4db] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_8766b382e4db]

