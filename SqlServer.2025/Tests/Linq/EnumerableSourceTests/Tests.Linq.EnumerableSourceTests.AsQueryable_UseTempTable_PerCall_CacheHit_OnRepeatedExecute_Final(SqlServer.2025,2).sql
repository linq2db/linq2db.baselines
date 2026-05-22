-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_5fccfad91b22]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_5fccfad91b22](Id, Data)

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_5fccfad91b22] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_5fccfad91b22]

