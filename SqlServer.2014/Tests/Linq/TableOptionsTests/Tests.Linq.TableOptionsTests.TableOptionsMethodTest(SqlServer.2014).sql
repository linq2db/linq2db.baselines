BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#TestTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TestTable]

BeforeExecute
-- SqlServer.2014

CREATE TABLE [tempdb]..[#TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2014

SELECT
	[t4].[Id_1],
	[t4].[Value_1],
	[t4].[Id],
	[t4].[Value_2],
	[t3].[Id],
	[t3].[Value]
FROM
	(
		SELECT
			[t2].[Id],
			[t1].[Id] as [Id_1],
			[t1].[Value] as [Value_1],
			[t2].[Value] as [Value_2]
		FROM
			[tempdb]..[#TestTable] [t1],
			[tempdb]..[#TestTable] [t2]
	) [t4]
		INNER JOIN [tempdb]..[#TestTable] [t3] ON [t4].[Id] = [t3].[Id]
WHERE
	[t4].[Id_1] = [t4].[Id]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#TestTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TestTable]

