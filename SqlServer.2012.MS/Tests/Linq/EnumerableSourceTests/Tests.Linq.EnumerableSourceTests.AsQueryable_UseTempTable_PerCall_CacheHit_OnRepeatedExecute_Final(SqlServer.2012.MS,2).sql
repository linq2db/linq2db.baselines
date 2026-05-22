-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_f6fa5b3ba547]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_f6fa5b3ba547](Id, Data)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_f6fa5b3ba547] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_f6fa5b3ba547]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_f6fa5b3ba547]

