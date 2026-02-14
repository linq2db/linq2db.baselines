-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
WHERE
	(
		SELECT
			r.GuidValue as HasValue
		FROM
			LinqDataTypes r
		LIMIT 1
	) IS NOT NULL

