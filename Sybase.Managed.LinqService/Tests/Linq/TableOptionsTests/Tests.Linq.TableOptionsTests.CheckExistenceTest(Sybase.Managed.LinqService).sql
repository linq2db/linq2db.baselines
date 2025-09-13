BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'DisposableTable') IS NULL)
	EXECUTE('
		CREATE TABLE [DisposableTable]
		(
			[ID] Int NOT NULL,

			CONSTRAINT [PK_DisposableTable] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'DisposableTable') IS NOT NULL)
	DROP TABLE [DisposableTable]

