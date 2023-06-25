BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IsNullOrEmptyTable') IS NOT NULL)
	DROP TABLE [IsNullOrEmptyTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IsNullOrEmptyTable') IS NULL)
	EXECUTE('
		CREATE TABLE [IsNullOrEmptyTable]
		(
			[Id]    Int           NOT NULL,
			[Value] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [IsNullOrEmptyTable]
(
	[Id],
	[Value]
)
SELECT 1,'   ' UNION ALL
SELECT 2,''

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	Len([p].[Value]) = 3

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IsNullOrEmptyTable') IS NOT NULL)
	DROP TABLE [IsNullOrEmptyTable]

