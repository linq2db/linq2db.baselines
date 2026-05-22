-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_5c28a6744a2e]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_5c28a6744a2e](Id, Data)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_5c28a6744a2e] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_5c28a6744a2e]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_5c28a6744a2e]

