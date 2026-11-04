-- YDB Ydb
SELECT
	t1.RowNumber_3 as RowNumber,
	t1.RowNumber_1 as RowNumber_1,
	t1.RowNumber_2 as RowNumber_2
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY c_1.ChildID, e.ParentID DESC) as RowNumber,
			e.Value1 as RowNumber_1,
			c_1.ChildID as RowNumber_2,
			e.ParentID as RowNumber_3
		FROM
			Parent e
				RIGHT JOIN Child c_1 ON e.ParentID = c_1.ParentID
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.RowNumber_2,
	t1.RowNumber_3 DESC

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

