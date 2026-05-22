-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_d19a3a4828ed]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_d19a3a4828ed](Id, Data)

-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_d19a3a4828ed] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_d19a3a4828ed]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_d19a3a4828ed]

