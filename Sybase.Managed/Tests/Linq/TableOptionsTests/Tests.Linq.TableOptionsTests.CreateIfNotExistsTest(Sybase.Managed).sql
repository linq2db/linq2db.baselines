-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NOT NULL)
	DROP TABLE [CreateIfNotExistsTable]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NULL)
	EXECUTE('
		CREATE TABLE [CreateIfNotExistsTable]
		(
			[Id]    Int NOT NULL,
			[Value] Int NOT NULL
		)
	')

-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CreateIfNotExistsTable] [t1]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NULL)
	EXECUTE('
		CREATE TABLE [CreateIfNotExistsTable]
		(
			[Id]    Int NOT NULL,
			[Value] Int NOT NULL
		)
	')

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NOT NULL)
	DROP TABLE [CreateIfNotExistsTable]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CreateIfNotExistsTable') IS NOT NULL)
	DROP TABLE [CreateIfNotExistsTable]

