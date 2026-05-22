-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_53c927294619]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_53c927294619](Id, Data)

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_53c927294619] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_53c927294619]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_53c927294619]

