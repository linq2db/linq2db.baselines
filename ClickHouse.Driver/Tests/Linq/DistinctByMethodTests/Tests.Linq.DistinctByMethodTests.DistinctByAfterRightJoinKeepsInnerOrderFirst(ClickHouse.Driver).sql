-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1,
	t1.ChildID
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY c_1.ChildID, e.ParentID DESC)) as RowNumber,
			c_1.ChildID as ChildID,
			e.ParentID as ParentID,
			e.Value1 as Value1
		FROM
			Parent e
				RIGHT JOIN Child c_1 ON e.ParentID = c_1.ParentID
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.ChildID,
	t1.ParentID DESC

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

