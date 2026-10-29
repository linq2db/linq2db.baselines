-- ClickHouse.Octonica ClickHouse
SELECT
	x.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC)) as RowNumber,
			e.ParentID as ParentID,
			e.Value1 as Value1
		FROM
			Parent e
	) x
WHERE
	x.RowNumber = toInt64(1)
ORDER BY
	x.ParentID DESC

