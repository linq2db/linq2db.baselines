-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e_1.Value1 ORDER BY e_1.ParentID DESC)) as RowNumber,
			e_1.ParentID as ParentID,
			e_1.Value1 as Value1
		FROM
			(
				SELECT
					e.Value1 as Value1,
					e.ParentID as ParentID
				FROM
					Parent e
				ORDER BY
					e.ParentID DESC
				LIMIT 3
			) e_1
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

