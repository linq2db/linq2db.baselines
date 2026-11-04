-- ClickHouse.Octonica ClickHouse
SELECT
	t1.RowNumber_3,
	t1.RowNumber_1,
	t1.RowNumber_2
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Value1 ORDER BY c_1.ChildID, e.ParentID DESC)) as RowNumber,
			e.Value1 as RowNumber_1,
			c_1.ChildID as RowNumber_2,
			e.ParentID as RowNumber_3
		FROM
			Parent e
				RIGHT JOIN Child c_1 ON e.ParentID = c_1.ParentID
	) t1
WHERE
	t1.RowNumber = toInt64(1)
ORDER BY
	t1.RowNumber_2,
	t1.RowNumber_3 DESC

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

