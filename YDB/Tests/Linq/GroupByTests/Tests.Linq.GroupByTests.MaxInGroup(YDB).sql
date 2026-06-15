-- YDB Ydb

SELECT
	g_1.GroupId as GroupId,
	MAX(g_1.DataValue) as Simple_1,
	MAX(g_1.DataValue) as Projection,
	MAX(CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as Filter_1,
	MAX(CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as FilterProjection,
	MAX(DISTINCT g_1.DataValue) as Distinct_1,
	MAX(DISTINCT CASE
		WHEN g_1.DataValue % 2 = Double('0') THEN g_1.DataValue
		ELSE NULL
	END) as FilterDistinct1,
	MAX(DISTINCT CASE
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

