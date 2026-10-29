-- YDB Ydb
SELECT
	x.Value1 as Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC) as RowNumber,
			e.ParentID as ParentID,
			e.Value1 as Value1
		FROM
			Parent e
	) x
WHERE
	x.RowNumber = 1l
ORDER BY
	x.ParentID DESC

