-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.ParentID % 2 ORDER BY e.Value1 NULLS FIRST, e.ParentID)) as RowNumber,
			e.Value1 as Value1,
			e.ParentID as ParentID
		FROM
			(
				SELECT
					p.ParentID as ParentID,
					p.Value1 as Value1
				FROM
					Parent p
				ORDER BY
					p.Value1 NULLS FIRST,
					p.ParentID
				LIMIT 7
			) e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.Value1 NULLS FIRST,
	t1.ParentID

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

