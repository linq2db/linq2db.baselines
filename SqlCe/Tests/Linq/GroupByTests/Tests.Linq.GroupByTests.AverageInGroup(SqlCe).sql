BeforeExecute
-- SqlCe

DROP TABLE [AggregationData]

BeforeExecute
-- SqlCe

CREATE TABLE [AggregationData]
(
	[GroupId]   Int   NOT NULL,
	[DataValue] Float     NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe

SELECT
	[g_2].[GroupId],
	[g_2].[AVG_1],
	[g_2].[AVG_2],
	[g_2].[AVG_3],
	[g_2].[AVG_4],
	[t2].[AVG_1] as [AVG_5],
	[t4].[AVG_1] as [AVG_6],
	[t6].[AVG_1] as [AVG_7]
FROM
	(
		SELECT
			[g_1].[GroupId],
			AVG([g_1].[DataValue]) as [AVG_1],
			AVG([g_1].[DataValue]) as [AVG_2],
			AVG(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [AVG_3],
			AVG(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [AVG_4]
		FROM
			[AggregationData] [g_1]
		WHERE
			[g_1].[DataValue] IS NOT NULL
		GROUP BY
			[g_1].[GroupId]
	) [g_2]
		OUTER APPLY (
			SELECT
				AVG([t1].[DataValue]) as [AVG_1]
			FROM
				(
					SELECT DISTINCT
						[t].[DataValue]
					FROM
						[AggregationData] [t]
					WHERE
						[t].[DataValue] IS NOT NULL AND [g_2].[GroupId] = [t].[GroupId]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				AVG([t3].[DataValue]) as [AVG_1]
			FROM
				(
					SELECT DISTINCT
						[t_1].[DataValue]
					FROM
						[AggregationData] [t_1]
					WHERE
						[t_1].[DataValue] IS NOT NULL AND [g_2].[GroupId] = [t_1].[GroupId] AND
						CAST([t_1].[DataValue] AS Int) % 2 = 0
				) [t3]
		) [t4]
		OUTER APPLY (
			SELECT
				AVG([t5].[DataValue]) as [AVG_1]
			FROM
				(
					SELECT DISTINCT
						[t_2].[DataValue]
					FROM
						[AggregationData] [t_2]
					WHERE
						[t_2].[DataValue] IS NOT NULL AND [g_2].[GroupId] = [t_2].[GroupId] AND
						CAST([t_2].[DataValue] AS Int) % 2 = 0
				) [t5]
		) [t6]

BeforeExecute
-- SqlCe

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [AggregationData]

