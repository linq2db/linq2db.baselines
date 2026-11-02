-- YDB Ydb
SELECT
	t1.Key_1 as Key_1,
	t1.Count_1 as Count_1
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.ParentID % 2 ORDER BY e.ParentID) as RowNumber,
			e.ParentID as Key_1,
			COUNT(*) as Count_1
		FROM
			Parent e
				INNER JOIN Child c_1 ON e.ParentID = c_1.ParentID
		GROUP BY
			e.ParentID
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.Key_1

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

