BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DistinctOrderByTable') IS NOT NULL)
	DROP TABLE [DistinctOrderByTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DistinctOrderByTable') IS NULL)
	EXECUTE('
		CREATE TABLE [DistinctOrderByTable]
		(
			[Id] Int           NOT NULL,
			[F1] Int           NOT NULL,
			[F2] NVarChar(255)     NULL,

			CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
SELECT 8,8,'8' UNION ALL
SELECT 3,3,'3' UNION ALL
SELECT 2,2,'2' UNION ALL
SELECT 6,3,'3' UNION ALL
SELECT 1,3,'3' UNION ALL
SELECT 5,5,'5' UNION ALL
SELECT 7,2,'2' UNION ALL
SELECT 4,4,'4'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[_1].[F2]
FROM
	(
		SELECT DISTINCT
			[_].[F1],
			[_].[F2]
		FROM
			[DistinctOrderByTable] [_]
	) [_1]
ORDER BY
	[_1].[F1] DESC

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DistinctOrderByTable') IS NOT NULL)
	DROP TABLE [DistinctOrderByTable]

