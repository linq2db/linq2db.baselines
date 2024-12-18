BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderByDistinctData') IS NOT NULL)
	DROP TABLE [OrderByDistinctData]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderByDistinctData') IS NULL)
	EXECUTE('
		CREATE TABLE [OrderByDistinctData]
		(
			[Id]            Int           NOT NULL,
			[DuplicateData] NVarChar(255)     NULL,
			[OrderData1]    Int           NOT NULL,
			[OrderData2]    Int           NOT NULL,

			CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
SELECT 1,'One',1,1 UNION ALL
SELECT 2,'One',1,10 UNION ALL
SELECT 3,'One',2,2 UNION ALL
SELECT 4,'One',3,3 UNION ALL
SELECT 5,'One',4,4 UNION ALL
SELECT 6,'One',5,5 UNION ALL
SELECT 10,'Two',1,1 UNION ALL
SELECT 20,'Two',1,10 UNION ALL
SELECT 30,'Two',2,2 UNION ALL
SELECT 40,'Two',3,3 UNION ALL
SELECT 50,'Two',4,4 UNION ALL
SELECT 60,'Two',5,5 UNION ALL
SELECT 100,'Three',1,1 UNION ALL
SELECT 200,'Three',1,10 UNION ALL
SELECT 300,'Three',2,2 UNION ALL
SELECT 400,'Three',3,3 UNION ALL
SELECT 500,'Three',4,4 UNION ALL
SELECT 600,'Three',5,5

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t_1].[DuplicateData],
	(
		SELECT
			COUNT(*)
		FROM
			[OrderByDistinctData] [c_1]
		WHERE
			[c_1].[DuplicateData] = [t_1].[DuplicateData] AND [c_1].[DuplicateData] IS NOT NULL AND [t_1].[DuplicateData] IS NOT NULL OR
			[c_1].[DuplicateData] IS NULL AND [t_1].[DuplicateData] IS NULL
	)
FROM
	(
		SELECT TOP 2
			[t].[Id],
			[t].[DuplicateData]
		FROM
			[OrderByDistinctData] [t]
	) [t_1]
ORDER BY
	[t_1].[Id] DESC

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'OrderByDistinctData') IS NOT NULL)
	DROP TABLE [OrderByDistinctData]

