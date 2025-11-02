-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DisposableTable') IS NULL)
	EXECUTE('
		CREATE TABLE [DisposableTable]
		(
			[ID] Int NOT NULL
		)
	')

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DisposableTable') IS NOT NULL)
	DROP TABLE [DisposableTable]

