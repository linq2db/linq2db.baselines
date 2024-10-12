BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [AggregationData]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AggregationData]
(
	[GroupId]   INTEGER NOT NULL,
	[DataValue] Float       NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[GroupId],
	AVG([t].[DataValue]),
	AVG([t].[DataValue]),
	AVG(CASE
		WHEN [t].[DataValue] % 2 = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	AVG(CASE
		WHEN [t].[DataValue] % 2 = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	CAST(AVG(DISTINCT [t].[DataValue]) AS Decimal),
	AVG(DISTINCT CASE
		WHEN [t].[DataValue] % 2 = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN [t].[DataValue] % 2 = 0 THEN [t].[DataValue]
		ELSE NULL
	END)
FROM
	[AggregationData] [t]
WHERE
	[t].[DataValue] IS NOT NULL
GROUP BY
	[t].[GroupId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [AggregationData]

