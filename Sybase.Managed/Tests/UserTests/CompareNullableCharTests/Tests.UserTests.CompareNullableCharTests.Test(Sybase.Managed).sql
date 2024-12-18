BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1') IS NOT NULL)
	DROP TABLE [Table1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1') IS NULL)
	EXECUTE('
		CREATE TABLE [Table1]
		(
			[Field1] Int      IDENTITY NOT NULL,
			[Foeld2] NChar(1)              NULL,

			CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([Field1])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[current_1].[Field1],
	[previous].[Field1]
FROM
	[Table1] [current_1],
	[Table1] [previous]
WHERE
	[current_1].[Foeld2] = [previous].[Foeld2] AND [current_1].[Foeld2] IS NOT NULL AND [previous].[Foeld2] IS NOT NULL OR
	[current_1].[Foeld2] IS NULL AND [previous].[Foeld2] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1') IS NOT NULL)
	DROP TABLE [Table1]

