BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NULL)
	CREATE TABLE [AggregationData]
	(
		[GroupId]   Int   NOT NULL,
		[DataValue] Float     NULL
	)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

SELECT
	[g_1].[GroupId],
	COUNT(*),
	COUNT(CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 THEN 1
		ELSE NULL
	END),
	COUNT(*),
	COUNT(DISTINCT [g_1].[DataValue]),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x].[DataValue]
				FROM
					[AggregationData] [x]
				WHERE
					[x].[DataValue] IS NOT NULL AND [g_1].[GroupId] = [x].[GroupId]
			) [x_1]
		WHERE
			(Convert(Int, [x_1].[DataValue]) % 2) = 0
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[t].[DataValue]
				FROM
					[AggregationData] [t]
				WHERE
					[t].[DataValue] IS NOT NULL AND [g_1].[GroupId] = [t].[GroupId] AND
					(Convert(Int, [t].[DataValue]) % 2) = 0
			) [t1]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x_2].[DataValue]
				FROM
					[AggregationData] [x_2]
				WHERE
					[x_2].[DataValue] IS NOT NULL AND [g_1].[GroupId] = [x_2].[GroupId] AND
					(Convert(Int, [x_2].[DataValue]) % 2) = 0
			) [x_3]
		WHERE
			(Convert(Int, [x_3].[DataValue]) % 2) = 0
	),
	COUNT(CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 THEN 1
		ELSE NULL
	END),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[t_1].[DataValue]
				FROM
					[AggregationData] [t_1]
				WHERE
					[t_1].[DataValue] IS NOT NULL AND [g_1].[GroupId] = [t_1].[GroupId] AND
					(Convert(Int, [t_1].[DataValue]) % 2) = 0
			) [t2]
	)
FROM
	[AggregationData] [g_1]
WHERE
	[g_1].[DataValue] IS NOT NULL
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]

