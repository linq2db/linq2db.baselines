-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1.ParentID % 2 ORDER BY e_1.ParentID DESC) as RowNumber,
			e_1.ParentID as ParentID,
			e_1.Value1 as Value1
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC) as RowNumber,
					e.ParentID as ParentID,
					e.Value1 as Value1
				FROM
					Parent e
			) e_1
		WHERE
			e_1.RowNumber = 1l
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.ParentID DESC

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

