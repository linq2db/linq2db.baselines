BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AggregationData]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [AggregationData]
(
	[GroupId]   INTEGER NOT NULL,
	[DataValue] Float       NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(1,1),
(1,NULL),
(1,3),
(1,1),
(1,5),
(1,6),
(2,7),
(2,8),
(2,9),
(2,NULL),
(2,11),
(2,7),
(3,13),
(3,16),
(3,16),
(3,16),
(3,NULL),
(3,18)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[g_1].[GroupId],
	SUM([g_1].[DataValue]),
	SUM([g_1].[DataValue]),
	SUM(CASE
		WHEN [g_1].[DataValue] % 2 = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END),
	SUM(CASE
		WHEN [g_1].[DataValue] % 2 = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END),
	SUM(DISTINCT [g_1].[DataValue]),
	SUM(DISTINCT CASE
		WHEN [g_1].[DataValue] % 2 = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END),
	SUM(DISTINCT CASE
		WHEN [g_1].[DataValue] % 2 = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END)
FROM
	[AggregationData] [g_1]
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AggregationData]

