﻿BeforeExecute
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
	[g_2].[SUM_1],
	[g_2].[SUM_2],
	[g_2].[SUM_3],
	[g_2].[SUM_4],
	[t2].[SUM_1] as [SUM_5],
	[t4].[SUM_1] as [SUM_6],
	[t6].[SUM_1] as [SUM_7]
FROM
	(
		SELECT
			[g_1].[GroupId],
			SUM([g_1].[DataValue]) as [SUM_1],
			SUM([g_1].[DataValue]) as [SUM_2],
			SUM(CASE
				WHEN Convert(Int, [g_1].[DataValue]) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [SUM_3],
			SUM(CASE
				WHEN Convert(Int, [g_1].[DataValue]) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [SUM_4]
		FROM
			[AggregationData] [g_1]
		GROUP BY
			[g_1].[GroupId]
	) [g_2]
		OUTER APPLY (
			SELECT
				SUM([t1].[DataValue]) as [SUM_1]
			FROM
				(
					SELECT DISTINCT
						[t].[DataValue]
					FROM
						[AggregationData] [t]
					WHERE
						[g_2].[GroupId] = [t].[GroupId]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				SUM([t3].[DataValue]) as [SUM_1]
			FROM
				(
					SELECT DISTINCT
						[t_1].[DataValue]
					FROM
						[AggregationData] [t_1]
					WHERE
						[g_2].[GroupId] = [t_1].[GroupId] AND Convert(Int, [t_1].[DataValue]) % 2 = 0
				) [t3]
		) [t4]
		OUTER APPLY (
			SELECT
				SUM([t5].[DataValue]) as [SUM_1]
			FROM
				(
					SELECT DISTINCT
						[t_2].[DataValue]
					FROM
						[AggregationData] [t_2]
					WHERE
						[g_2].[GroupId] = [t_2].[GroupId] AND Convert(Int, [t_2].[DataValue]) % 2 = 0
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

