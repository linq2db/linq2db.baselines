-- ClickHouse.Driver ClickHouse
SELECT
	t1.RowNumber_1,
	t1.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY negate(e.ParentID) ORDER BY e.ParentID)) as RowNumber,
			e.ParentID as RowNumber_1,
			e.Value1 as Value1
		FROM
			Parent e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.RowNumber_1
LIMIT 1

