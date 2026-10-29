-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY -e.ParentID ORDER BY e.ParentID) as RowNumber,
			e.ParentID as ParentID,
			e.Value1 as Value1
		FROM
			Parent e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.ParentID
LIMIT 1

