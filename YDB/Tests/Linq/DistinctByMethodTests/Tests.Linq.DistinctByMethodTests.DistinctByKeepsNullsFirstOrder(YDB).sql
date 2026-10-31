-- YDB Ydb
SELECT
	p.Value1 as Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.ParentID % 2 ORDER BY e.Value1) as RowNumber,
			e.Value1 as Value1
		FROM
			Parent e
	) p
WHERE
	p.RowNumber = 1l
ORDER BY
	p.Value1

