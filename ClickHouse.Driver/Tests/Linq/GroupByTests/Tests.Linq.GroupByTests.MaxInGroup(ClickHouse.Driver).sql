-- ClickHouse.Driver ClickHouse

SELECT
	g_1.GroupId,
	maxOrNull(g_1.DataValue),
	maxOrNull(g_1.DataValue),
	maxOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	maxOrNull(DISTINCT g_1.DataValue),
	maxOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	maxOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END)
FROM
	AggregationData g_1
GROUP BY
	g_1.GroupId

-- ClickHouse.Driver ClickHouse

SELECT
	t1.GroupId,
	t1.DataValue
FROM
	AggregationData t1

