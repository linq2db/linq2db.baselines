-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e_1.Value1 ORDER BY Coalesce(e_1.Value1, 0), e_1.ParentID DESC)) as RowNumber,
			e_1.Value1 as Value1,
			e_1.ParentID as ParentID
		FROM
			(
				SELECT
					e.Value1 as Value1,
					e.ParentID as ParentID
				FROM
					Parent e
				ORDER BY
					Coalesce(e.Value1, 0),
					e.ParentID DESC
				LIMIT 4
			) e_1
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	Coalesce(t1.Value1, 0),
	t1.ParentID DESC

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

