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
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[GroupId],
	[d_1].[DataValue]
FROM
	(
		SELECT DISTINCT
			[t].[GroupId]
		FROM
			[AggregationData] [t]
		WHERE
			[t].[DataValue] IS NOT NULL
	) [m_1]
		INNER JOIN (
			SELECT DISTINCT
				[d].[DataValue],
				[d].[GroupId]
			FROM
				[AggregationData] [d]
			WHERE
				[d].[DataValue] IS NOT NULL
		) [d_1] ON [m_1].[GroupId] = [d_1].[GroupId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[GroupId],
	[d_1].[DataValue]
FROM
	(
		SELECT DISTINCT
			[t].[GroupId]
		FROM
			[AggregationData] [t]
		WHERE
			[t].[DataValue] IS NOT NULL
	) [m_1]
		INNER JOIN (
			SELECT DISTINCT
				[d].[DataValue],
				[d].[GroupId]
			FROM
				[AggregationData] [d]
			WHERE
				[d].[DataValue] IS NOT NULL AND [d].[DataValue] % 2 = 0
		) [d_1] ON [m_1].[GroupId] = [d_1].[GroupId]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[GroupId],
	[d_1].[DataValue]
FROM
	(
		SELECT DISTINCT
			[t].[GroupId]
		FROM
			[AggregationData] [t]
		WHERE
			[t].[DataValue] IS NOT NULL
	) [m_1]
		INNER JOIN (
			SELECT DISTINCT
				[d].[DataValue],
				[d].[GroupId]
			FROM
				[AggregationData] [d]
			WHERE
				[d].[DataValue] IS NOT NULL AND [d].[DataValue] % 2 = 0
		) [d_1] ON [m_1].[GroupId] = [d_1].[GroupId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[g_1].[GroupId],
	COUNT(*),
	COUNT(CASE
		WHEN [g_1].[DataValue] % 2 = 0 THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT [g_1].[DataValue]),
	COUNT(CASE
		WHEN [g_1].[DataValue] % 2 = 0 THEN 1
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

