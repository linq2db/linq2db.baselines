BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'tempdb..#TestTable') IS NOT NULL)
	DROP TABLE #TestTable

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE #TestTable
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

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
			#TestTable [t1],
			#TestTable [t2]
	) [t4]
		INNER JOIN #TestTable [t3] ON [t4].[Id] = [t3].[Id]
WHERE
	[t4].[Id_1] = [t4].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE #TestTable

