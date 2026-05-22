-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_aa585e10fa1a]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_aa585e10fa1a](Id, Data)

-- SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_aa585e10fa1a] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_aa585e10fa1a]

