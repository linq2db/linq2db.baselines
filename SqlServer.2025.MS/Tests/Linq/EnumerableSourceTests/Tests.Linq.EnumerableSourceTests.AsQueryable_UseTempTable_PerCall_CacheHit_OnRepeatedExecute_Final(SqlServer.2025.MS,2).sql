-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_8259dade238c]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_8259dade238c](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_8259dade238c] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_8259dade238c]

