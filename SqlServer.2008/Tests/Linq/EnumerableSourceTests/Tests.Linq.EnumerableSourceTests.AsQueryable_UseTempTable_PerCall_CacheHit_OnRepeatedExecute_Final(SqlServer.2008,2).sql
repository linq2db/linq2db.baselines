-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_7a267df7c32f]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_7a267df7c32f](Id, Data)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_7a267df7c32f] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_7a267df7c32f]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_7a267df7c32f]

