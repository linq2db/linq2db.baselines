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
	[t9].[Key_1],
	[t9].[COUNT_1],
	[t9].[COUNT_2],
	[t9].[COUNT_3],
	[t2].[COUNT_1] as [COUNT_4],
	[t3].[COUNT_1] as [COUNT_5],
	[t5].[COUNT_1] as [COUNT_6],
	[t6].[COUNT_1] as [COUNT_7],
	[t9].[COUNT_4] as [COUNT_8],
	[t8].[COUNT_1] as [COUNT_9]
FROM
	(
		SELECT
			[t].[GroupId] as [Key_1],
			COUNT(*) as [COUNT_1],
			COUNT(CASE
				WHEN CAST([t].[DataValue] AS Int) % 2 = 0 AND [t].[DataValue] IS NOT NULL
					THEN 1
				ELSE NULL
			END) as [COUNT_2],
			COUNT(*) as [COUNT_3],
			COUNT(CASE
				WHEN CAST([t].[DataValue] AS Int) % 2 = 0 AND [t].[DataValue] IS NOT NULL
					THEN 1
				ELSE NULL
			END) as [COUNT_4]
		FROM
			[AggregationData] [t]
		WHERE
			[t].[DataValue] IS NOT NULL
		GROUP BY
			[t].[GroupId]
	) [t9]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				(
					SELECT DISTINCT
						[t_1].[DataValue]
					FROM
						[AggregationData] [t_1]
					WHERE
						[t_1].[DataValue] IS NOT NULL AND [t9].[Key_1] = [t_1].[GroupId]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				(
					SELECT DISTINCT
						[x].[DataValue]
					FROM
						[AggregationData] [x]
					WHERE
						[x].[DataValue] IS NOT NULL AND [t9].[Key_1] = [x].[GroupId]
				) [x_1]
			WHERE
				CAST([x_1].[DataValue] AS Int) % 2 = 0 AND [x_1].[DataValue] IS NOT NULL
		) [t3]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				(
					SELECT DISTINCT
						[t_2].[DataValue]
					FROM
						[AggregationData] [t_2]
					WHERE
						[t_2].[DataValue] IS NOT NULL AND
						[t9].[Key_1] = [t_2].[GroupId] AND
						CAST([t_2].[DataValue] AS Int) % 2 = 0 AND
						[t_2].[DataValue] IS NOT NULL
				) [t4]
		) [t5]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				(
					SELECT DISTINCT
						[x_2].[DataValue]
					FROM
						[AggregationData] [x_2]
					WHERE
						[x_2].[DataValue] IS NOT NULL AND
						[t9].[Key_1] = [x_2].[GroupId] AND
						CAST([x_2].[DataValue] AS Int) % 2 = 0 AND
						[x_2].[DataValue] IS NOT NULL
				) [x_3]
			WHERE
				CAST([x_3].[DataValue] AS Int) % 2 = 0 AND [x_3].[DataValue] IS NOT NULL
		) [t6]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				(
					SELECT DISTINCT
						[t_3].[DataValue]
					FROM
						[AggregationData] [t_3]
					WHERE
						[t_3].[DataValue] IS NOT NULL AND
						[t9].[Key_1] = [t_3].[GroupId] AND
						CAST([t_3].[DataValue] AS Int) % 2 = 0 AND
						[t_3].[DataValue] IS NOT NULL
				) [t7]
		) [t8]

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

