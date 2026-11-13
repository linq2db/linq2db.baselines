-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.ChildID ORDER BY e.ParentID) as RowNumber,
			e.ChildID as ChildID,
			e.ParentID as ParentID
		FROM
			Child e
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.ParentID,
	t1.ChildID DESC

