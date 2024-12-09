BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Document') IS NOT NULL)
	DROP TABLE [Document]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Document') IS NULL)
	EXECUTE('
		CREATE TABLE [Document]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[s].[Id]
FROM
	[Document] [s]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Document') IS NOT NULL)
	DROP TABLE [Document]

