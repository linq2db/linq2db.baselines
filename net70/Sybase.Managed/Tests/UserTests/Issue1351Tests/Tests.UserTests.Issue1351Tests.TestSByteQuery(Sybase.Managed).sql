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
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	[_].[TestField] = 0

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	([_].[TestNullable] <> 1 OR [_].[TestNullable] IS NULL)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'T1351Model') IS NOT NULL)
	DROP TABLE [T1351Model]

