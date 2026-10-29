-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e_1.ParentID % 2 ORDER BY e_1.ParentID DESC)) as RowNumber,
			e_1.ParentID as ParentID,
			e_1.Value1 as Value1
		FROM
			(
				SELECT
					toInt64(ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC)) as RowNumber,
					e.ParentID as ParentID,
					e.Value1 as Value1
				FROM
					Parent e
			) e_1
		WHERE
			e_1.RowNumber = toInt64(1)
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.ParentID DESC

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

