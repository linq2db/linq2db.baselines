-- ClickHouse.Driver ClickHouse
SELECT
	p.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.ParentID % 2 ORDER BY e.Value1 NULLS FIRST)) as RowNumber,
			e.Value1 as Value1
		FROM
			Parent e
	) p
WHERE
	p.RowNumber = toInt64(1)
ORDER BY
	p.Value1 NULLS FIRST

