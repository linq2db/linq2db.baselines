-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1,
	t1.ChildID
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY e.ParentID DESC, c_1.ChildID)) as RowNumber,
			e.ParentID as ParentID,
			c_1.ChildID as ChildID,
			e.Value1 as Value1
		FROM
			Parent e
				INNER JOIN Child c_1 ON c_1.ParentID = e.ParentID
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.ParentID DESC,
	t1.ChildID

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

