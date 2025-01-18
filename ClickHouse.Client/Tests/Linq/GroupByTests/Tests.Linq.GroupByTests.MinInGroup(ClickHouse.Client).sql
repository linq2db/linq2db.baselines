BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	g_1.GroupId,
	minOrNull(g_1.DataValue),
	minOrNull(g_1.DataValue),
	minOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	minOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	minOrNull(DISTINCT g_1.DataValue),
	minOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	minOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END)
FROM
	AggregationData g_1
GROUP BY
	g_1.GroupId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.GroupId,
	t1.DataValue
FROM
	AggregationData t1

