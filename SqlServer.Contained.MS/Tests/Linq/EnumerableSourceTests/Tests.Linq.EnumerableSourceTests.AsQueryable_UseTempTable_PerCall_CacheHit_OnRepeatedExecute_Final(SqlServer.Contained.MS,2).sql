-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_1721e932eaef]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_1721e932eaef](Id, Data)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_1721e932eaef] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_1721e932eaef]

