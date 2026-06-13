-- YDB Ydb

SELECT
	g_1.GroupId as GroupId,
	SUM(g_1.DataValue) as Simple_1,
	SUM(g_1.DataValue) as Projection,
	SUM(CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as Filter_1,
	SUM(CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as FilterProjection,
	SUM(DISTINCT g_1.DataValue) as Distinct_1,
	SUM(DISTINCT CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as FilterDistinct1,
	SUM(DISTINCT CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as FilterDistinct2
FROM
	AggregationData g_1
GROUP BY
	g_1.GroupId

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.GroupId as GroupId,
	t1.DataValue as DataValue
FROM
	AggregationData t1

