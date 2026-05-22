-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_901f823d8e9e]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_901f823d8e9e](Id, Data)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_901f823d8e9e] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_901f823d8e9e]

