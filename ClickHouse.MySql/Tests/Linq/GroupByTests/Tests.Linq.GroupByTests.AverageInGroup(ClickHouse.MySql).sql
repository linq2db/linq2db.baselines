BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AggregationData

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS AggregationData
(
	GroupId   Int32,
	DataValue Nullable(Float64)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(1,toFloat64(1)),
(1,NULL),
(1,toFloat64(3)),
(1,toFloat64(1)),
(1,toFloat64(5)),
(1,toFloat64(6)),
(2,toFloat64(7)),
(2,toFloat64(8)),
(2,toFloat64(9)),
(2,NULL),
(2,toFloat64(11)),
(2,toFloat64(7)),
(3,toFloat64(13)),
(3,toFloat64(16)),
(3,toFloat64(16)),
(3,toFloat64(16)),
(3,NULL),
(3,toFloat64(18))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	g_1.GroupId,
	avgOrNull(g_1.DataValue),
	avgOrNull(g_1.DataValue),
	avgOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	avgOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	avgOrNull(DISTINCT g_1.DataValue),
	avgOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	avgOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END)
FROM
	AggregationData g_1
WHERE
	g_1.DataValue IS NOT NULL
GROUP BY
	g_1.GroupId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.GroupId,
	t1.DataValue
FROM
	AggregationData t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AggregationData

