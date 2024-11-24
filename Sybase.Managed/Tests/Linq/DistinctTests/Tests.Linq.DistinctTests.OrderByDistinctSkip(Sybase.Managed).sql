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
			[F3] Int           NOT NULL,

			CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
SELECT 8,8,'8',5 UNION ALL
SELECT 3,3,'3',3 UNION ALL
SELECT 2,2,'2',1 UNION ALL
SELECT 6,3,'3',4 UNION ALL
SELECT 1,3,'3',7 UNION ALL
SELECT 5,5,'5',2 UNION ALL
SELECT 7,2,'2',8 UNION ALL
SELECT 4,4,'4',6

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t2].[F2]
FROM
	(
		SELECT DISTINCT
			[t1].[F1],
			[t1].[F2]
		FROM
			[DistinctOrderByTable] [t1]
	) [t2]
ORDER BY
	[t2].[F1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DistinctOrderByTable') IS NOT NULL)
	DROP TABLE [DistinctOrderByTable]

