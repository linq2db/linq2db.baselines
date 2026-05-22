-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_8161c0c920f9]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_8161c0c920f9](Id, Data)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_8161c0c920f9] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_8161c0c920f9]

