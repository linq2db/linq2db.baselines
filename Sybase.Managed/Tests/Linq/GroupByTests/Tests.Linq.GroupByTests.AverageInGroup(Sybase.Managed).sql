BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AggregationData') IS NOT NULL)
	DROP TABLE [AggregationData]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AggregationData') IS NULL)
	EXECUTE('
		CREATE TABLE [AggregationData]
		(
			[GroupId]   Int   NOT NULL,
			[DataValue] Float     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
SELECT 1,1 UNION ALL
SELECT 1,NULL UNION ALL
SELECT 1,3 UNION ALL
SELECT 1,1 UNION ALL
SELECT 1,5 UNION ALL
SELECT 1,6 UNION ALL
SELECT 2,7 UNION ALL
SELECT 2,8 UNION ALL
SELECT 2,9 UNION ALL
SELECT 2,NULL UNION ALL
SELECT 2,11 UNION ALL
SELECT 2,7 UNION ALL
SELECT 3,13 UNION ALL
SELECT 3,16 UNION ALL
SELECT 3,16 UNION ALL
SELECT 3,16 UNION ALL
SELECT 3,NULL UNION ALL
SELECT 3,18

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[g_1].[GroupId],
	AVG([g_1].[DataValue]),
	AVG([g_1].[DataValue]),
	AVG(CASE
		WHEN [g_1].[DataValue] % 2 = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END),
	AVG(CASE
		WHEN [g_1].[DataValue] % 2 = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END),
	AVG(DISTINCT [g_1].[DataValue]),
	AVG(DISTINCT CASE
		WHEN [g_1].[DataValue] % 2 = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN [g_1].[DataValue] % 2 = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END)
FROM
	[AggregationData] [g_1]
WHERE
	[g_1].[DataValue] IS NOT NULL
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AggregationData') IS NOT NULL)
	DROP TABLE [AggregationData]

