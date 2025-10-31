-- Sybase.Managed Sybase

CREATE TABLE #TestTable
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#TestTable') IS NOT NULL)
	DROP TABLE #TestTable

