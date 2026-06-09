-- YDB Ydb

SELECT
	t.GroupId as GroupId,
	COUNT(*) as Simple_1,
	COUNT(CASE
		WHEN t.DataValue % 2 = Double('0') THEN 1
		ELSE NULL
	END) as WithFilter,
	COUNT(*) as Projection,
	COUNT(DISTINCT t.DataValue) as Distinct_1,
	COUNT(DISTINCT CASE
		WHEN t.DataValue % 2 = Double('0') THEN t.DataValue
		ELSE NULL
	END) as DistinctWithFilter,
	COUNT(DISTINCT CASE
		WHEN t.DataValue % 2 = Double('0') THEN t.DataValue
		ELSE NULL
	END) as FilterDistinct,
	COUNT(DISTINCT CASE
		WHEN t.DataValue % 2 = Double('0') THEN t.DataValue
		ELSE NULL
	END) as FilterDistinctWithFilter,
	COUNT(CASE
		WHEN t.DataValue % 2 = Double('0') THEN 1
		ELSE NULL
	END) as SubFilter,
	COUNT(DISTINCT CASE
		WHEN t.DataValue % 2 = Double('0') THEN t.DataValue
		ELSE NULL
	END) as SubFilterDistinct,
	COUNT(DISTINCT t.DataValue) as SubNoFilterDistinct
FROM
	AggregationData t
WHERE
	t.DataValue IS NOT NULL
GROUP BY
	t.GroupId

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.GroupId as GroupId,
	t1.DataValue as DataValue
FROM
	AggregationData t1

