BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicColumnsTestTable') IS NOT NULL)
	DROP TABLE [DynamicColumnsTestTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicColumnsTestTable') IS NULL)
	EXECUTE('
		CREATE TABLE [DynamicColumnsTestTable]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id]
FROM
	[DynamicColumnsTestTable] [x]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicColumnsTestTable') IS NOT NULL)
	DROP TABLE [DynamicColumnsTestTable]

