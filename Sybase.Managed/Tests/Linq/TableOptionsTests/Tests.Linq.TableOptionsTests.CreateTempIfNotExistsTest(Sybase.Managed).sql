BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NOT NULL)
	DROP TABLE [CreateIfNotExistsTable]

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE #CreateIfNotExistsTable
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	#CreateIfNotExistsTable [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NULL)
	EXECUTE('
		CREATE TABLE [CreateIfNotExistsTable]
		(
			[Id]    Int NOT NULL,
			[Value] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NOT NULL)
	DROP TABLE [CreateIfNotExistsTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#CreateIfNotExistsTable') IS NOT NULL)
	DROP TABLE #CreateIfNotExistsTable

