-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#TestTable') IS NOT NULL)
	DROP TABLE #TestTable

-- Sybase.Managed Sybase

CREATE TABLE #TestTable
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- Sybase.Managed Sybase

SELECT
	[sub].[Id_1],
	[sub].[Value_1],
	[sub].[Id],
	[sub].[Value_2],
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
	) [sub]
		INNER JOIN #TestTable [t3] ON [sub].[Id] = [t3].[Id]
WHERE
	[sub].[Id_1] = [sub].[Id]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#TestTable') IS NOT NULL)
	DROP TABLE #TestTable

