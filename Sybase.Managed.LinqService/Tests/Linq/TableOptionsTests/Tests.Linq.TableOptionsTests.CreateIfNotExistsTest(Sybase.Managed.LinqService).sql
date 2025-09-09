BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NOT NULL)
	DROP TABLE [CreateIfNotExistsTable]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NULL)
	EXECUTE('
		CREATE TABLE [CreateIfNotExistsTable]
		(
			[Id]    Int NOT NULL,
			[Value] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO [CreateIfNotExistsTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	2
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CreateIfNotExistsTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NULL)
	EXECUTE('
		CREATE TABLE [CreateIfNotExistsTable]
		(
			[Id]    Int NOT NULL,
			[Value] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NOT NULL)
	DROP TABLE [CreateIfNotExistsTable]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NOT NULL)
	DROP TABLE [CreateIfNotExistsTable]

