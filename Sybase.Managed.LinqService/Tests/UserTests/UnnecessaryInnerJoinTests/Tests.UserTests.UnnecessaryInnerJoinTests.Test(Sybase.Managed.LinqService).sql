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
			[Field1] Int IDENTITY NOT NULL,
			[Field2] Int          NOT NULL,

			CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([Field1])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table2') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table2') IS NULL)
	EXECUTE('
		CREATE TABLE [Table2]
		(
			[Field2] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_Table2] PRIMARY KEY CLUSTERED ([Field2])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Field2]
FROM
	[Table2] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table1] [x]
		WHERE
			[t1].[Field2] = [x].[Field2] AND CAST([x].[Field1] AS BigInt) IN (1, 2, 3)
	)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table2') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1') IS NOT NULL)
	DROP TABLE [Table1]

