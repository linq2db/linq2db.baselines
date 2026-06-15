-- YDB Ydb

SELECT
	g_1.GroupId as Key_1,
	AVG(g_1.DataValue) as Simple_1,
	AVG(g_1.DataValue) as Projection,
	AVG(CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as Filter_1,
	AVG(CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as FilterProjection,
	AVG(DISTINCT g_1.DataValue) as Distinct_1,
	AVG(DISTINCT CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as FilterDistinct1,
	AVG(DISTINCT CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as FilterDistinct2
FROM
	AggregationData g_1
WHERE
	g_1.DataValue IS NOT NULL
GROUP BY
	g_1.GroupId

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.GroupId as GroupId,
	t1.DataValue as DataValue
FROM
	AggregationData t1

