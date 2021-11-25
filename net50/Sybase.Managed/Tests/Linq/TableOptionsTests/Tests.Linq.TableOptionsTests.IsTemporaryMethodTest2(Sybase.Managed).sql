﻿BeforeExecute
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
	[t1].[Id],
	[t1].[Value],
	[t2].[Id],
	[t2].[Value],
	[t3].[Id],
	[t3].[Value]
FROM
	#TestTable [t1]
		INNER JOIN #TestTable [t2] ON 1=1
		INNER JOIN #TestTable [t3] ON [t2].[Id] = [t3].[Id]
WHERE
	[t1].[Id] = [t2].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'tempdb..#TestTable') IS NOT NULL)
	DROP TABLE #TestTable

