-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_04a65ae7b13d]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_04a65ae7b13d](Id, Data)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_04a65ae7b13d] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_04a65ae7b13d]

