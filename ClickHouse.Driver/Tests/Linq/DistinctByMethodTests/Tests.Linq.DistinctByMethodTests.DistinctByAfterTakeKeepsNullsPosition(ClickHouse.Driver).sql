-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.c1 ORDER BY e.Value1 NULLS FIRST, e.ParentID)) as RowNumber,
			e.Value1 as Value1,
			e.ParentID as ParentID
		FROM
			(
				SELECT
					p.ParentID % 2 as c1,
					p.Value1 as Value1,
					p.ParentID as ParentID
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

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

