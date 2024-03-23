BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

BeforeExecute
-- SqlServer.2017

CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value],
	[t2].[Id],
	[t2].[Value],
	[t3].[Id],
	[t3].[Value]
FROM
	[tempdb]..[#TestTable] [t1]
		CROSS JOIN [tempdb]..[#TestTable] [t2]
		INNER JOIN [tempdb]..[#TestTable] [t3] ON [t2].[Id] = [t3].[Id]
WHERE
	[t1].[Id] = [t2].[Id]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#TestTable]

