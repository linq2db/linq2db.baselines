-- ClickHouse.Driver ClickHouse
SELECT
	p.ParentID
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.ParentID, e.Value1 ORDER BY e.Value1 NULLS FIRST, e.ParentID)) as RowNumber,
			e.ParentID as ParentID,
			e.Value1 as RowNumber_1
		FROM
			Parent e
	) p
WHERE
	p.RowNumber = toInt64(1)
ORDER BY
	p.RowNumber_1 NULLS FIRST,
	p.ParentID

