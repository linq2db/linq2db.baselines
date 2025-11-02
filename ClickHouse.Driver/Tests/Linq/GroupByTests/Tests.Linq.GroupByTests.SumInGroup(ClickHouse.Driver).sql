-- ClickHouse.Driver ClickHouse

SELECT
	g_1.GroupId,
	sumOrNull(g_1.DataValue),
	sumOrNull(g_1.DataValue),
	sumOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	sumOrNull(CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	sumOrNull(DISTINCT g_1.DataValue),
	sumOrNull(DISTINCT CASE
		WHEN g_1.DataValue % 2 = toFloat64(0) THEN g_1.DataValue
		ELSE NULL
	END),
	sumOrNull(DISTINCT CASE
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

