-- YDB Ydb
SELECT
	t1.RowNumber_1 as RowNumber
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.ParentID % 2 ORDER BY e.ParentID DESC) as RowNumber,
			e.ParentID as RowNumber_1
		FROM
			Parent e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_1 DESC

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

