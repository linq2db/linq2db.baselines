-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_d8965301a0e9]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_d8965301a0e9](Id, Data)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_d8965301a0e9] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_d8965301a0e9]

