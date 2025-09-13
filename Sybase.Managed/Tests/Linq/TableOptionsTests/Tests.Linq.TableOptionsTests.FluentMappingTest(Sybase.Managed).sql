BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#TestTable') IS NOT NULL)
	DROP TABLE #TestTable

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE #TestTable
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value],
	[t2].[Id],
	[t2].[Value],
	[t2].[Id],
	[t2].[Value]
FROM
	#TestTable [t1],
	#TestTable [t2]
WHERE
	[t1].[Id] = [t2].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#TestTable') IS NOT NULL)
	DROP TABLE #TestTable

