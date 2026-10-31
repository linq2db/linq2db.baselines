-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC)) as RowNumber,
			e.ParentID as ParentID,
			e.Value1 as Value1
		FROM
			(
				SELECT
					p.Value1 as Value1,
					p.ParentID as ParentID
				FROM
					Parent p
				ORDER BY
					p.ParentID DESC
				LIMIT 7
			) e
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.ParentID DESC

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

