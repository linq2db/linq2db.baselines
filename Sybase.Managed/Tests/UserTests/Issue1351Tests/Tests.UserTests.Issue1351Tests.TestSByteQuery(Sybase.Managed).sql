BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'T1351Model') IS NOT NULL)
	DROP TABLE [T1351Model]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'T1351Model') IS NULL)
	EXECUTE('
		CREATE TABLE [T1351Model]
		(
			[ID]           Int     NOT NULL,
			[TestField]    TinyInt NOT NULL,
			[TestNullable] TinyInt     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	[t1].[TestField] = 0

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	([t1].[TestNullable] <> 1 OR [t1].[TestNullable] IS NULL)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'T1351Model') IS NOT NULL)
	DROP TABLE [T1351Model]

