BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

SELECT
	t1.GroupId,
	t1.DataValue
FROM
	AggregationData t1

