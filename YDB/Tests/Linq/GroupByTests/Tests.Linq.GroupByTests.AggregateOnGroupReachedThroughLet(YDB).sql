-- YDB Ydb
SELECT
	t.GroupId as GroupId,
	COUNT(*) as Direct,
	COUNT(CASE
		WHEN t.DataValue % 2 = Double('0') THEN 1
		ELSE NULL
	END) as FromEvens,
	COUNT(DISTINCT t.DataValue) as FromValues
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

