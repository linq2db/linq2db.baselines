-- ClickHouse.Driver ClickHouse
SELECT
	p.ParentID
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC)) as RowNumber,
			e.ParentID as ParentID
		FROM
			Parent e
	) p
WHERE
	p.RowNumber = toInt64(1)
ORDER BY
	p.ParentID DESC

