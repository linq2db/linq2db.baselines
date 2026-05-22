-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_4cd2103bdc5b]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_4cd2103bdc5b](Id, Data)

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_4cd2103bdc5b] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_4cd2103bdc5b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_4cd2103bdc5b]

