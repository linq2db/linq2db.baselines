-- SqlServer.CS.MS SqlServer.2025
DROP TABLE IF EXISTS [tempdb]..[#TestTable]

-- SqlServer.CS.MS SqlServer.2025
CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#TestTable] [t1]

-- SqlServer.CS.MS SqlServer.2025
DROP TABLE IF EXISTS [tempdb]..[#TestTable]

