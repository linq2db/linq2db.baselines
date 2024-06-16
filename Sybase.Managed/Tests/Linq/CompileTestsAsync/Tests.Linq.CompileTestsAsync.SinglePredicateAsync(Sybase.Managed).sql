﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AsyncDataTable') IS NOT NULL)
	DROP TABLE [AsyncDataTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AsyncDataTable') IS NULL)
	EXECUTE('
		CREATE TABLE [AsyncDataTable]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [AsyncDataTable]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 2 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT 6 UNION ALL
SELECT 7 UNION ALL
SELECT 8 UNION ALL
SELECT 9 UNION ALL
SELECT 10

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2

SELECT TOP 2
	@Id,
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @Id

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AsyncDataTable') IS NOT NULL)
	DROP TABLE [AsyncDataTable]

