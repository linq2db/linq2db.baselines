-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

-- SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value],
	[t2].[Id],
	[t2].[Value],
	[t3].[Id],
	[t3].[Value]
FROM
	[tempdb]..[#TestTable] [t1]
		INNER JOIN [tempdb]..[#TestTable] [t2] ON [t1].[Id] = [t2].[Id]
		INNER JOIN [tempdb]..[#TestTable] [t3] ON [t2].[Id] = [t3].[Id]

-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

