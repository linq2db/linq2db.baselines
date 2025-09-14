BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#TestTable] [t1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

