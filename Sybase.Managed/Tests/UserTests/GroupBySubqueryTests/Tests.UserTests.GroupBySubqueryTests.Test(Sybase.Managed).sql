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
			[Field1] Int NOT NULL,
			[Field2] Int NOT NULL,
			[Field3] Int     NULL
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
			[Field2] Int           NOT NULL,
			[Field4] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table3') IS NOT NULL)
	DROP TABLE [Table3]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table3') IS NULL)
	EXECUTE('
		CREATE TABLE [Table3]
		(
			[Field5] Int NOT NULL,
			[Field1] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table4') IS NOT NULL)
	DROP TABLE [Table4]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table4') IS NULL)
	EXECUTE('
		CREATE TABLE [Table4]
		(
			[Field5] Int NOT NULL,
			[Field6] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table5') IS NOT NULL)
	DROP TABLE [Table5]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table5') IS NULL)
	EXECUTE('
		CREATE TABLE [Table5]
		(
			[Field3] Int     NULL,
			[Field7] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table6') IS NOT NULL)
	DROP TABLE [Table6]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table6') IS NULL)
	EXECUTE('
		CREATE TABLE [Table6]
		(
			[Field7] Int           NOT NULL,
			[Field8] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT DISTINCT
	[a_Ref4].[Field6],
	[a_Ref3].[Field4],
	Coalesce([a_Ref5].[Field8], '')
FROM
	[Table1] [t1]
		INNER JOIN [Table3] [a_Ref1] ON [t1].[Field1] = [a_Ref1].[Field1]
		INNER JOIN [Table4] [a_Ref4] ON [a_Ref1].[Field5] = [a_Ref4].[Field5]
		LEFT JOIN [Table2] [a_Ref3] ON [t1].[Field2] = [a_Ref3].[Field2]
		LEFT JOIN [Table5] [a_Ref2] ON [t1].[Field3] = [a_Ref2].[Field3] OR [t1].[Field3] IS NULL AND [a_Ref2].[Field3] IS NULL
		LEFT JOIN [Table6] [a_Ref5] ON [a_Ref2].[Field7] = [a_Ref5].[Field7]
WHERE
	[t1].[Field3] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[g_2].[Field6],
	[g_2].[Field4],
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[a_Ref4].[Field6],
			[a_Ref3].[Field4],
			Coalesce([a_Ref5].[Field8], '') as [Field1]
		FROM
			[Table1] [g_1]
				INNER JOIN [Table3] [a_Ref1] ON [g_1].[Field1] = [a_Ref1].[Field1]
				INNER JOIN [Table4] [a_Ref4] ON [a_Ref1].[Field5] = [a_Ref4].[Field5]
				LEFT JOIN [Table2] [a_Ref3] ON [g_1].[Field2] = [a_Ref3].[Field2]
				LEFT JOIN [Table5] [a_Ref2] ON [g_1].[Field3] = [a_Ref2].[Field3] OR [g_1].[Field3] IS NULL AND [a_Ref2].[Field3] IS NULL
				LEFT JOIN [Table6] [a_Ref5] ON [a_Ref2].[Field7] = [a_Ref5].[Field7]
		WHERE
			[g_1].[Field3] IS NOT NULL
	) [g_2]
GROUP BY
	[g_2].[Field6],
	[g_2].[Field4]
HAVING
	COUNT(*) > 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table6') IS NOT NULL)
	DROP TABLE [Table6]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table5') IS NOT NULL)
	DROP TABLE [Table5]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table4') IS NOT NULL)
	DROP TABLE [Table4]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table3') IS NOT NULL)
	DROP TABLE [Table3]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table2') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1') IS NOT NULL)
	DROP TABLE [Table1]

