BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CustomTableColumn') IS NOT NULL)
	DROP TABLE [CustomTableColumn]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CustomTableColumn') IS NULL)
	EXECUTE('
		CREATE TABLE [CustomTableColumn]
		(
			[DataTypeID] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	0
FROM
	[CustomTableColumn] [x]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CustomTableColumn') IS NOT NULL)
	DROP TABLE [CustomTableColumn]

